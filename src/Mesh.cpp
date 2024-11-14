#include "Mesh.h"

Mesh::Mesh(std::vector <Vertex>& vertices, std::vector <GLuint>& indices, std::vector <Texture>& textures, glm::vec3& position)
{
	Mesh::position = position;
	Mesh::vertices = vertices;
	Mesh::indices = indices;
	Mesh::textures = textures;

	vao.Bind();
	// Generates Vertex Buffer Object and links it to vertices
	VBO VBO(vertices);
	// Generates Element Buffer Object and links it to indices
	EBO EBO(indices);
	// Links VBO attributes such as coordinates and colors to VAO
	vao.LinkAttrib(VBO, 0, 3, GL_FLOAT, 8 * sizeof(float), (void*)0);
	vao.LinkAttrib(VBO, 1, 3, GL_FLOAT, 8 * sizeof(float), (void*)(3 * sizeof(float)));
	vao.LinkAttrib(VBO, 2, 2, GL_FLOAT, 8 * sizeof(float), (void*)(6 * sizeof(float)));
	// Unbind all to prevent accidentally modifying them
	vao.Unbind();
	VBO.Unbind();
	EBO.Unbind();
}


void Mesh::Draw(Shader& shader, Camera& camera)
{
	// Bind shader to be able to access uniforms
	shader.Activate();
	vao.Bind();
	unsigned int count = 0;
	for (unsigned int i = 0; i < textures.size(); i++)
	{
		std::string num;
		textures[i].type;
		GLenum type = textures[i].type;
		num = std::to_string(count++);
		textures[i].texUnit(shader, num.c_str(), i);
		textures[i].Bind();
	}
	glm::mat4 model = glm::mat4(1.0f); 
	model = glm::translate(model, position); 
 	glUniformMatrix4fv(glGetUniformLocation(shader.ID, "model"), 1, GL_FALSE, glm::value_ptr(model));
	// Take care of the camera Matrix
	glUniform3f(glGetUniformLocation(shader.ID, "camPos"), camera.Position.x, camera.Position.y, camera.Position.z);
	camera.Matrix(shader, "camMatrix");

	// Draw the actual mesh
	glDrawElements(GL_TRIANGLES, indices.size(), GL_UNSIGNED_INT, 0);
}