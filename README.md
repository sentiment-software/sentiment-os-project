# Introduction
## Summary
The `sentiment-os-project` is an open source microkernel OS pet-project.<br>
We do this mostly for practicing and self-educational purposes, but we also share it, so others might find something useful for themselves, hence the extensive commenting in parts of the code.<br>
As a consequence, we do not have any specific roadmap or dedicated time for this project.<br>
## License
The project is licensed under the Apache License 2.0, which allows you to use, modify, and distribute the code freely, as long as you comply with the terms of the license. You can find the full text of the license in the LICENSE file in the root directory of the project.
## Goals
The main goal of the `sentiment-os-project` is to create a simple, yet functional microkernel operating system that can run on x86_64 architecture. We aim to implement basic features such as process management, memory management, and file system support, while keeping the codebase clean and well-documented for educational purposes.<br>
We interpret the term "microkernel" in a broad sense, meaning that we aim to keep the core of the operating system as small and efficient as possible, while allowing for modularity and extensibility through user-space services and drivers. This approach allows us to focus on the core functionality of the operating system, while also providing a flexible framework for adding new features and capabilities in the future.
Long-term, we may experiment with our security-focused ideologies and implement some of the security features we have in mind, such as confidential computing, secure enclaves, inter-process access controls, fine-grained storage encryption and hardware-based security features.

# Resources
We use a variety of resources to guide our development:
- Our primary source of information is the **Intel Software Developer's Manual**, which provides detailed information about the x86_64 architecture and its features.
- Various online resources, such as OSDev Wiki and other open source operating system projects, for inspiration and guidance. Even though OSDev Wiki is a great resource, we do not follow it blindly, and we often deviate from its recommendations based on our own research and experimentation.
- Andrew S. Tanenbaum's book "Operating Systems: Design and Implementation", which provides a comprehensive overview of operating system design and implementation, with a focus on microkernel architectures. We find this book to be a valuable resource for understanding the principles and concepts behind operating system design.
- Our own experience and knowledge in programming, computer architecture, hardware and software design.
- Finally, we also validate our ideas and implementations with AI. In Assembly and operating system development, Grok proved to be the most useful as it generated the most accurate and relevant responses, while also providing detailed explanations and insights into the underlying concepts and principles. We use AI as a tool to supplement our own research and experimentation, and we always verify the information we receive from it with other sources before implementing it in our code.

# Development
Currently, the development toolchain is not well-defined and we figure it out as we go. What we have so far is:
- `make` for building with a simple (yet ugly Win-style) Makefile that collects our build instructions.
- `qemu` for running and testing the OS in a virtualized environment.
- `gdb` for debugging the OS and analyzing its behavior.
- `nasm` for assembling the assembly code.
- `ndisasm` for disassembling the binary and analyzing its instructions.
- `x86_64-elf-ld` for linking the object files into a single executable.
- `x86_64-elf-gcc` for compiling the C code.
We'll probably move this section to a separate file in the future, as we figure out our development process and toolchain. For now, we just want to document our current setup and tools that we use for development.

# I like this!
> For code contributions, at this moment, we don't have the time and resources to dedicate to review them, but once we land on a more stable toolchain, project-configurations and communication channels that option will more-than-likely be open. 

This is 100% hobby / education / passion project. No company, no grants, no funding.
If you consider expressing your interest / thanks / cheers in the form of a virtual coffee, that will seriously help get this project off the ground and keep it going, as it will allow us to:
- buy more caffeine to survive 3 a.m. debugging sessions
- pay for test hardware
- give motivation to keep writing scary detailed comments
- prioritize this project over other hobbies and responsibilities
[![Buy Me A Coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://buymeacoffee.com/sentiment.software)