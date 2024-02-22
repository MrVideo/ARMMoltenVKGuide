#!/bin/sh

vulkan=~/VulkanSDK/1.3.275.0/macOS
homebrew=/opt/homebrew

g++ -std=c++17 -Iheaders -I$vulkan/include -I$homebrew/include -L$vulkan/lib -L$homebrew/lib -lglfw -lvulkan $1 -o ${1%.*}
