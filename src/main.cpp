#include "Mesh.h"

const unsigned int width = 800;
const unsigned int height = 800;
const float cube_size = 0.5;
Vertex vertices[] = 
{    
    // Tọa độ / Màu sắc / Tọa độ kết cấu
    Vertex{glm::vec3(-cube_size, -cube_size, -cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(0.0f, 0.0f)}, // Đỉnh 0
    Vertex{glm::vec3( cube_size, -cube_size, -cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(1.0f, 0.0f)}, // Đỉnh 1
    Vertex{glm::vec3( cube_size, -cube_size,  cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(1.0f, 1.0f)}, // Đỉnh 2
    Vertex{glm::vec3(-cube_size, -cube_size,  cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(0.0f, 1.0f)}, // Đỉnh 3
    Vertex{glm::vec3(-cube_size,  cube_size, -cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(0.0f, 0.0f)}, // Đỉnh 4
    Vertex{glm::vec3( cube_size,  cube_size, -cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(1.0f, 0.0f)}, // Đỉnh 5
    Vertex{glm::vec3( cube_size,  cube_size,  cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(1.0f, 1.0f)}, // Đỉnh 6
    Vertex{glm::vec3(-cube_size,  cube_size,  cube_size), glm::vec3(0.0f, 0.0f, 0.0f), glm::vec2(0.0f, 1.0f)}  // Đỉnh 7
};

GLuint indices[] =
{
    0, 1, 2, 0, 2, 3, // Mặt dưới
    4, 5, 6, 4, 6, 7, // Mặt trên
    0, 1, 5, 0, 5, 4, // Mặt trái
    1, 2, 6, 1, 6, 5, // Mặt phải
    2, 3, 7, 2, 7, 6, // Mặt sau
    3, 0, 4, 3, 4, 7  // Mặt trước
};


int main()
{
	if(glfwInit() == false)
    {
        glfwTerminate();
        return 0;
    }
	// Lấy màn hình chính
    GLFWmonitor* monitor = glfwGetPrimaryMonitor();
    const GLFWvidmode* mode = glfwGetVideoMode(monitor);
    GLFWwindow* window = glfwCreateWindow(mode->width, mode->height, "MINECRAFT", nullptr, nullptr );
    if(window == nullptr)
    {
        glfwTerminate();
        return 0;
    }
    glfwMakeContextCurrent(window);
    if(glewInit() != GLEW_OK)
    {
        glfwTerminate();
        return 0;
    }
	// Generates Shader object using shaders default.vert and default.frag
	Shader shaderProgram("../src/default.vert", "../src/default.frag");
	// Generates Vertex Array Object and binds it
    Texture textures[] = 
	{
		Texture(std::string("../images/brick.png").c_str(), GL_TEXTURE_2D, GL_TEXTURE0, GL_RGBA, GL_UNSIGNED_BYTE)
	};
	std::vector <Vertex> verts(vertices, vertices + sizeof(vertices) / sizeof(Vertex));
    std::vector <GLuint> ind(indices, indices + sizeof(indices) / sizeof(GLuint));
    std::vector <Texture> tex(textures, textures + sizeof(textures) / sizeof(Texture));
    std::vector<Mesh> world;
    const unsigned int count_width = 16, count_height = 16, count_up = 128;
    for(int i = 0; i < count_width; i++)
    {
        for(int j = 0; j < count_height; j++)
        {
			for(int e = 0; e < count_up; e++)
			{
				glm::vec3 position(i * 1.0f, e * 1.0f, j * 1.0f);
				world.push_back(Mesh(verts, ind, tex, position));
			}
        }
    }
	// Enables the Depth Buffer
	glEnable(GL_DEPTH_TEST);
	// glEnable(GL_CULL_FACE);
	// glCullFace(GL_FRONT);
	// glFrontFace(GL_CCW);
	// Creates camera object
	Camera camera(mode->width, mode->height, glm::vec3(0.0f, 0.0f, 2.0f));
	float deltaTime = 0.0f;
	float lastFrame = 0.0f;
    unsigned int frameCount = 0;
    float timeElapsed = 0.0f;
	// Main while loop
	while (!glfwWindowShouldClose(window))
	{
		float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;
        frameCount += 1;
        timeElapsed += deltaTime;
        if(timeElapsed >= 1.0 / 30)
        {
            std::string FPS = std::to_string((1.0 / deltaTime) * frameCount);
            std::string newTitle = FPS;
            glfwSetWindowTitle(window, newTitle.c_str());
            frameCount = 0;
            timeElapsed = 0;
        }
		// Specify the color of the background
		glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
		// Clean the back buffer and depth buffer
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		// Tell OpenGL which Shader Program we want to use
		shaderProgram.Activate();
		// Handles camera inputs
		camera.Inputs(window, deltaTime);
		// Updates and exports the camera matrix to the Vertex Shader
		camera.Matrix(shaderProgram, "camMatrix");
        unsigned int id = 0;
        for(int i = 0; i < count_width; i++)
        {
            for(int j = 0; j < count_height; j++)
            {
				for(int e = 0; e < count_up; e++)
				{
					world[id].Draw(shaderProgram, camera);
					id += 1;
				}
            }
        }
        
		glDrawElements(GL_TRIANGLES, sizeof(indices) / sizeof(int), GL_UNSIGNED_INT, 0);
		// Swap the back buffer with the front buffer
		glfwSwapBuffers(window);
		// Take care of all GLFW events
		glfwPollEvents();
	}
	shaderProgram.Delete();
	// Delete window before ending the program
	glfwDestroyWindow(window);
	// Terminate GLFW before ending the program
	glfwTerminate();
	return 0;
}