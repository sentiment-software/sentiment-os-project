# List of things to do

### Summary
A near infinite list of things to do, but here are some good starting points. The list is not in any particular order, and some items may be more important than others.<br>
This list was compiled from random notes and might be inaccurate or incomplete, but it should give us a good starting point for our development process and help us prioritize our tasks and goals. As we progress with the development, we will likely add more items to this list and update it as needed.

### Build Environment
- Create a platform independent Makefile or migrate to Unix - or write a custom build script or something similar.
- Refactor Makefile to be more modular and easier to maintain.
- Compile a cross-compiler toolchain for x86_64.

### Boot Stage
- Remap PIC to the actual IRQs.
- Memory management:
  - Detect memory size and layout using the BIOS memory map.
  - Identity map the whole physical memory.
  - Identify and reserve memory regions for the kernel, devices, and other purposes.
- Load the kernel 

### Kernel
- Set up a proper IDT, implement ISRs, map PIC IRQs (must be done in Assembly) - this is prerequisite to almost everything else, as we need to be able to handle interrupts and exceptions properly before we can do anything else in the kernel.
- Detect and initialize all the CPU cores and set up multiprocessing (must be done in Assembly)
  - Iterate the CPUID logical processor IDs to detect the number of CPU cores and their capabilities.
  - Initialize the APIC (Advanced Programmable Interrupt Controller) to manage interrupts across multiple CPU cores.
  - Set up the necessary data structures and synchronization mechanisms to enable multiprocessing in the kernel, such as per-core data structures, spinlock, and inter-processor communication mechanisms.
  - Implement a simple scheduler to manage the execution of processes across multiple CPU cores, allowing for load balancing and efficient utilization of the available CPU resources.
  - Implement inter-processor communication (IPC) mechanisms to allow CPU cores to communicate and coordinate with each other, such as sending interrupts or messages between cores for synchronization and task management.
  - _Note for Long Term: This is probably the very first layer where we can start experimenting with IPS (Inter-Process Security) and other security features, as this is the layer where we have the most control over the hardware. Also, this is the closest-to-CPU, full Ring 0 layer, where we can have high control over the instruction execution. These statements might or might not be true, as ISRs may also get involved in this._
- Detect and initialize peripheral devices using ACPI / PCI
  - Load and parse the ACPI tables to get information about the system's hardware and configuration.
  - Detect and initialize devices using the PCI bus, including network cards, storage controllers, and other peripherals.
  - Implement drivers for detected devices, such as a network driver for a detected network card or a storage driver for a detected storage controller. This in itself is too vague, what we need in the first place is most likely a keyboard driver and proper HDD/SSD/nVME detection and utilization.
  - _Note for Long Term: This is another layer where we can experiment with IPS and other security features (i.e. utilizing the TPM chip for inter-process cryptography), as this is the layer where we have control over the devices and their interactions with the system and where we will have cross-ring switches. We can implement access controls and permissions for devices, as well as monitor and log device activity._
- Implement a file system to allow for basic file operations, such as reading and writing files, creating directories, and managing file permissions. This is where we can start experimenting with file-system level security, storage encryption and other security features related to storage, as this is the layer where we have control over the file system and its interactions with the storage devices. We can implement encryption for files and directories, as well as access controls and permissions for file operations.
- Basic console I/O with simple text-based VGA driver.
- Create threading and process management system to allow for multitasking and process isolation. This is another layer where we can experiment with IPS and other security features, as this is the layer where we have control over the processes and their interactions with each other and with the system. We can implement access controls and permissions for processes, as well as monitor and log process activity. Probably overlaps with user management principles.
- Implement networking support: network drivers, TCP/IP stack, and basic network services. This is another layer where we can experiment with IPS and other security features, as this is the layer where we have control over the network interactions and communications. We can implement access controls and permissions for network operations, as well as monitor and log network activity. We can also implement encryption for network communications.
- Other misc.: Intel UHD, USB, audio, PCI graphics, configuration management, power management, ELF executable, containerization, virtualization, virtual memory mapping, etc. This is a very vague item, but it encompasses a lot of different features and capabilities that we can implement in the kernel. Each of these features can be a separate item on this list, and each of them can have its own set of sub-tasks and goals.