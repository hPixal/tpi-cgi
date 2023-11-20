#include "display/game_window.hpp"
#include "shaders/shader.hpp"
#include <iostream>

// Template stuff
Shader sDefault;
Shader sVHS;
int timeLocation;
int resLocation;
unsigned int FBO;
unsigned int RBO;
unsigned int u_texture;
unsigned int VAO;
unsigned int VBO;
unsigned int EBO;
unsigned int rectVAO;
unsigned int rectVBO;

float rectangleVertices[] =
{
	// Coords(x,y) // texCoords (s,t)
	 1.0f, -1.0f,  1.0f, 0.0f,
	-1.0f, -1.0f,  0.0f, 0.0f,
	-1.0f,  1.0f,  0.0f, 1.0f,

	 1.0f,  1.0f,  1.0f, 1.0f,
	 1.0f, -1.0f,  1.0f, 0.0f,
	-1.0f,  1.0f,  0.0f, 1.0f
};


// Called whenever the window or framebuffer's size is changed
void FramebufferSizeCallback(GLFWwindow* window, int width, int height) {
    glViewport(0, 0, width, height);
}

// 1. The first thing that is run when starting the window
void GameWindow::Initialize() {
    // Set GLFW stuff before window is created
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
}

// 2. Run after the window has been created, as well as the OpenGL context
void GameWindow::LoadContent() {
    // Set callback
    glfwSetFramebufferSizeCallback(this->windowHandle, FramebufferSizeCallback);

    // Initialize imgui
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    ImGui::StyleColorsDark();
    ImGui_ImplGlfw_InitForOpenGL(this->windowHandle, true);
    ImGui_ImplOpenGL3_Init("#version 330");
    std::cout << "INFO::IMGUI::SUCCESSFULLY_INITIALIZED" << std::endl;

    // Load the template shader
    sDefault = Shader::LoadShader("resources/shaders/default.vs", "resources/shaders/default.fs");
    sVHS = Shader::LoadShader("resources/shaders/vhs.vs", "resources/shaders/vhs.fs");

    // Take care of all the light related things.
	glm::vec4 lightColor = glm::vec4(1.0f, 1.0f, 1.0f, 1.0f);
	glm::vec3 lightPos = glm::vec3(0.5f, 0.5f, 0.5f);

    // Activate both shaders.
	sDefault.Activate();
    // Pass the uniforms for sDefault here ...
	sVHS.Activate();
    // Pass the uniforms for sVHS here ...
    
    // Set Uniform.
	glUniform1i(glGetUniformLocation(sVHS.programID, "screenTexture"), 0);

    // Obtain the index to import variables into shader file.
    timeLocation = glGetUniformLocation(sVHS.programID, "u_time");
    resLocation = glGetUniformLocation(sVHS.programID, "u_res");

    // Vertices needed for a square
    float vertices[] = {
    0.5f,  0.5f, 1.0f,  // top right
    0.5f, -0.5f, 1.0f,  // bottom right
    -0.5f, -0.5f, 1.0f,  // bottom left
    -0.5f,  0.5f, 1.0f   // top left 
    };

    // Indices for rendering the above square
    unsigned int indices[] = {
        0, 1, 3,   // first triangle
        1, 2, 3    // second triangle
    };

    // Create Frame Buffer Object (FBO)
    glGenFramebuffers(1, &FBO);
    glBindFramebuffer(GL_FRAMEBUFFER, FBO);

    // Create the texture
    glGenTextures(1,&u_texture);
    glBindTexture(GL_TEXTURE_2D,FBO);

    // Set the texture parameters
    glTexImage2D(GL_TEXTURE_2D,0,GL_RGB,windowWidth,windowHeight,0,GL_RGB,GL_UNSIGNED_BYTE,NULL);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    // Attach texture to the framebuffer.
    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, u_texture, 0);

    // Create Render Buffer Object (RBO).
    glGenRenderbuffers(1,&RBO);
    glBindRenderbuffer(GL_RENDERBUFFER,RBO);

    // Attach RBO to the FBO.
    glRenderbufferStorage(GL_RENDERBUFFER,GL_DEPTH24_STENCIL8,windowWidth,windowHeight);
    glFramebufferRenderbuffer(GL_FRAMEBUFFER,GL_DEPTH_STENCIL_ATTACHMENT,GL_RENDERBUFFER,RBO); //revisar
    
    // Error checking fot the Frame Buffer
    auto fboStatus = glCheckFramebufferStatus(GL_FRAMEBUFFER);
    if (fboStatus != GL_FRAMEBUFFER_COMPLETE)
        std::cout << "FRAMEBUFFER ERROR: " << fboStatus << std::endl;

    // Prepare framebuffer rectangle VBO and VAO
	glGenVertexArrays(1, &rectVAO);
	glGenBuffers(1, &rectVBO);
	glBindVertexArray(rectVAO);
	glBindBuffer(GL_ARRAY_BUFFER, rectVBO);
	glBufferData(GL_ARRAY_BUFFER, sizeof(rectangleVertices), &rectangleVertices, GL_STATIC_DRAW);
	glEnableVertexAttribArray(0);
	glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)0);
	glEnableVertexAttribArray(1);
	glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 4 * sizeof(float), (void*)(2 * sizeof(float))); //revisar

    // Create Vertex Array object
    glGenVertexArrays(1, &VAO);
    glBindVertexArray(VAO); // And bind it

    // Create Vertex Buffer object
    glGenBuffers(1, &VBO);
    // And bind it (this also includes it into the VAO)
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    // Fill the VBO with vertex data, simply positions
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

    // layout = 0 should contain these positions
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
    glEnableVertexAttribArray(0); // Enable that shit

    // Create index buffer
    glGenBuffers(1, &EBO);
    // And bind it (also included in VAO)
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, EBO);
    // Fill with indices!
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW);
}
void GameWindow::Update() {

    // Set up the uniform variables.
    float timeValue = static_cast<float>(glfwGetTime());
    GLfloat vectorValues[2] = { this->windowWidth, this->windowHeight };

    // Update the uniform vars in the shader file.
    glUniform1f(timeLocation, timeValue);
    glUniform2fv(resLocation,1,vectorValues);

    // Performs hot-reload of shader. Only reloads whenever it has been modified - so not every frame.
    sVHS.ReloadFromFile();
    sDefault.ReloadFromFile();
}

void GameWindow::Render() {

    // Create new imgui frames
    //ImGui_ImplOpenGL3_NewFrame();
    //ImGui_ImplGlfw_NewFrame();
    //ImGui::NewFrame();

    // Bind the custom framebuffer
	glBindFramebuffer(GL_FRAMEBUFFER, FBO);
	
    // Specify the color of the background
	glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
	
    // Clean the back buffer and depth buffer
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
	
    // Enable depth testing since it's disabled when drawing the framebuffer rectangle
	glEnable(GL_DEPTH_TEST);
    
    // Make sure we're using the correct shader program.
    // Must be done per-frame, since the shader program id might change when hot-reloading
    //glUseProgram(sDefault.programID);
    sDefault.Activate();

    // Draw the square
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, 0);

    // Draw imgui
    //ImGui::ShowDemoWindow();
    //ImGui::Render();
    //ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

    glBindFramebuffer(GL_FRAMEBUFFER, 0);
	// Draw the framebuffer rectangle
	sVHS.Activate();
	glBindVertexArray(rectVAO);
	glDisable(GL_DEPTH_TEST); // prevents framebuffer rectangle from being discarded
	glBindTexture(GL_TEXTURE_2D, u_texture);
	glDrawArrays(GL_TRIANGLES, 0, 6);


    // Clear the window
    //glClearColor(0.2f, 0.3f, 0.3f, 0.5f);
    //glClear(GL_COLOR_BUFFER_BIT);

    // Swap double buffers and poll OS-events
    glfwSwapBuffers(this->windowHandle);
    glfwPollEvents();
}

void GameWindow::Unload() {
    // Destroy imgui
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
}