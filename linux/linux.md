1. Linux <- Unix
2. Linux -> More distributions ubuntu,debian,kali,Suse,Fedora... (purpose)
3. Linux is not unix
4. Linux kernel
    1. software program that communicates with hardware
    2. manages resources,process,memory...
5. Linux Torvalds (also created version control git)
6. Richard stallman - free s/w activist,free s/w foundation GNU
7. GNU + linux kernel combined
8. ISO -> CD/USB(hd) -> Booting into hard drive (pyshical drive)

9. Linux Architecture
    1. H/W - peripheral devices (RAM,HDD,CPU...)
    2. Kernel - virtualizes h/w resources,manages resources,process,io,file,device,memory,mitigate conflicts b/w
       different process
        1. types - monolythic,micro,hybrid,exo
        2. System library - implement (special type of functions) the functionality to Operatin system
    3. Shell - interface to kernel (hide complexities of kernel function , take command for user and executes it)
    4. Application & Utilities
        1. Utlity - provide OS functionalities to user

10. Kernel - Core Subsystems
    1. Process Scheduler - responsible for sharing CPU time across all processes
    2. Memory Management Unit - responsible for sharing memory space across all processes,separate virtual address
       spaces for each of the processes.
    3. Virtual Filesystem - Unified Interface to access 'stored data' from different filesystem
    4. Network subsystem
    5. Inter-process communication

11. Working with Directories
    1. mkdir
    2. rmdir

12. Working with files
    1. file
    2. touch
    3. cat
    4. echo
    5. rm
    6. copy
    7. move
    8. more
    9. less
    10. head
    11. tail

13. Linux File Structure (cd /) - where OS stored
    1. /bin - core utilities & functions of OS stored
    2. /etc - application configurations are installed
    3. /home - users directory
    4. /lib - binaries are stored (linux packages) , lib32 (32bit) , lib64 (64bit)
    5. /media - USB,external devices
    6. /mnt - shared devices (mounting folder,drives)
    7. /proc - processes information pesudo-file system
    8. /opt - optional software (depends on distribution)
    9. /root - home directory for root account (build in user - root access, disabled by default to access)
    10. /run - auto mounted USB device (desktop env)
    11. /sbin - dedicated to certain commands for root user
    12. /tmp - file temporarily stored
    13. /snap - software packages (ubuntu) - software container
    14. /usr - files and utilities shared between users
    15. /var - variable data is kept (sys logs,)

14. System Information
    1. uptime - system uptime,load, user
    2. free - amount of memory free and used
    3. ps - process current snapshot
    4. du - disk file usuage
    5. df - disk file system
    6. fdisk - disk detail mounted type,partition table
    7. lsblk - list block devices
    8. top - processes summary,uptime,files....
    9. htop - interactive process viewer

15. Network
    1. ifconfig - interface to configure network
    2. ip - show/manipulate - route,network...

16. Package Manager
    1. sudo - run command as another user (super user do)
    2. apt - debian - advanced package management tool.
    3. 
