# M1 Macs MoltenVK install

---

This guide is meant for Computer Graphics students that own ARM-based Macs.

This guide assumes that you will use the command line and a simple text editor (like nano, Neovim, VS Code...), not a fully-fledged IDE.

1. Follow the [tutorial](https://vulkan-tutorial.com/Development_environment#page_MacOS) provided in the PDF for the first assignment until the section "Setting up Xcode".
2. Go to the install folder of VulkanSDK (usually `~/VulkanSDK`), specifically to the path:
    ```bash
   ~/VulkanSDK/<vulkan version>
    ```
3. Run the install script via this command:
    ```bash
    sudo python3 install_vulkan.py
    ```
4. Edit your `.zshrc` and add the following line:
    ```bash
    export DYLD_LIBRARY_PATH=/Users/<your username>/VulkanSDK/1.3.275.0/macOS/lib
    ```
5. Download the script `vkcompile.sh` provided with this GitHub repository and save it somewhere you can remember
6. Alias that script in your `.zshrc` by adding the following line:
    ```bash
    alias gvk="/path/to/vkcompile.sh"
    ```
7. Update your terminal configuration by running:
    ```bash
    source ~/.zshrc
    ```

Now you should be able to compile `A01.cpp` by running `gvk A01.cpp` in your terminal in the directory that contains that file.

Please do let me know about any further problems by opening an issue here.
