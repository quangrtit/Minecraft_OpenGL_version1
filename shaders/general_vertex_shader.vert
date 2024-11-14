#version 330 core

layout(location = 0) in vec2 position; // Vị trí vertex
layout(location = 1) in vec2 texCoord; // Tọa độ texture

out vec2 fragTexCoord; // Truyền tọa độ texture đến fragment shader

void main()
{
    gl_Position = vec4(position, 0.0, 1.0); // Thiết lập vị trí của vertex
    fragTexCoord = texCoord; // Truyền tọa độ texture
}