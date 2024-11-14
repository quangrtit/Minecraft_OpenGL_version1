cmake_minimum_required(VERSION 3.10)
project(game)

# Thiết lập phiên bản C++
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Tìm kiếm thư viện OpenGL, GLFW, và GLEW
find_package(OpenGL REQUIRED)
find_package(glfw3 REQUIRED)
find_package(GLEW REQUIRED)

# Thêm thư mục chứa header
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/src ${GLEW_INCLUDE_DIRS})
# Thêm glm
include_directories(/usr/include) 

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/library/stb)  # Thư mục chứa stb_image.h

# Danh sách các file nguồn
set(SOURCES
    src/main.cpp
    src/shaderClass.cpp  # Thêm shaderClass.cpp vào danh sách file nguồn
    src/VAO.cpp
    src/VBO.cpp
    src/EBO.cpp
    src/Camera.cpp
    src/Texture.cpp
    src/Mesh.cpp
    src/stb.cpp
    
)

# Tạo executable
add_executable(game ${SOURCES})

# Liên kết các thư viện
target_link_libraries(game ${OPENGL_LIBRARIES} glfw ${GLEW_LIBRARIES})