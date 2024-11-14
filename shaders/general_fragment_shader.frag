#version 330 core

in vec2 fragTexCoord; // Nhận tọa độ texture
out vec4 color; // Màu sắc đầu ra

uniform sampler2D texture1; // Texture

void main()
{
    color = texture(texture1, fragTexCoord); // Lấy màu từ texture
}