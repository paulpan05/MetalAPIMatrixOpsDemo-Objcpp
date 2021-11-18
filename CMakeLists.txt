cmake_minimum_required(VERSION 3.20)
project(MetalDemoApp)

set(CMAKE_CXX_STANDARD 14)


add_executable(MetalDemoApp main.mm)

target_link_libraries(
        MetalDemoApp
        "-framework Cocoa"
        "-framework Foundation"
        "-framework Metal"
        "-framework MetalPerformanceShaders"
)
