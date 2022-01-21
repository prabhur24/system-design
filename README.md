# system-design

1. [02/01/2022] - [what it is?](https://www.educative.io/blog/system-design-primer#what)
2. [03/01/2022] [Kinds of System]<br>
    - Horizontal Scaling<br>
    - Vertical Scaling <br>
    - Monolithic application<br>
    - Micro services<br>
3. [04/01/2022] <br>
    - Requirement Clarification (Functional & Non-Functional)<br>
    - Estimation of Important data (queries/traffic/storage)<br>
    - Data Flow (Data model & How data will flow)
      & [choosing Databases](https://www.educative.io/blog/database-design-tutorial) <br>
    - High level design & Detailed Design <br>
    - Identifying Bottlenecks/Resolve from Detailed Design & mitigating them

4. [05/01/2022] [HW/SW](https://www.educative.io/blog/hardware-vs-software-components-computer) <br>
    - Architectural Design - Abstract Version <br>
    - HighLevel Design - part break down into sub system and modules <br>
    - Detailed Design - implementation <br>

[System design fundamentals]

5. [06/01/2022] [System design fundamentals](https://www.educative.io/blog/complete-guide-to-system-design) <br>
    - Scalability - Scaling(Horizontal/Vertical)<br>
    - [Microservice Architecture](https://www.educative.io/blog/complete-guide-to-system-design#microservices) <br>
    - [Proxy Server](https://www.educative.io/edpresso/what-is-a-proxy-server) <br>
        1. forward proxy<br>
        2. separate user from website (what they are browsing)<br>
        3. Privacy/Speed/Bandwidth/Activity logging<br>
    - [CAP Theorem](https://www.educative.io/blog/what-is-cap-theorem#whatiscaptheorem) <br>


        1. Consistency : all nodes see same data (most recent write while read across all servers)<br>
        2. Availability : (distributed systems) should respond without failure (but not gurantee on response with most
           recent write)<br>
        3. Partition Tolerance : break in communication b/w nodes (system does not fail)<br>
        4. PACELC Theorem - build on CAP & states that an additional trade-off exists: between latency and
           consistency.<br>
        5. [Ref 1]https://www.youtube.com/watch?v=eWMgsk7mpFc <br>
           [Ref 2]https://www.youtube.com/watch?v=8UryASGBiR4


6. [07/01/2022] [Redundancy & Replication](https://www.educative.io/blog/complete-guide-to-system-design#redundancyandreplication) <br>
7. [08/01/2022] [Storage](https://www.educative.io/blog/complete-guide-to-system-design#storage) <br>
    1. Block Storage [SAN]  <br>
        - Stored as block (each block has unique identifier for ease accessibility)
        - mounted on hypervisor layer on virtual/physical machines
        - boot from volume (os,db) - higher performance/lowest possible latency
    2. File Storage [NTFS/NFS] <br>
        - maintains Hierarchical  (folders/files)
        - can have lock on file level
        - simulataneous rd/wr
        - [Block Vs File](https://www.youtube.com/watch?v=PmxWTTpXNLI)
    3. Object Storage <br>
        - designed to handle large amount of unstructured data
        - dynamic scalibility (backup/archive/log files) -TB/PB/even more
    4. RAID<br> - Redundant Disk Array
        - multiple disk - to build faster,bigger and more reliable system
        - looks like disk , but internally its complex tool

8. [09/01/2022] [Message queues]<br>

   Message - data needs to get transmitted (different types of data)
   Queue - Holds in order and deliver
   
    
    1. producer - queue - consumer (P2P)
    2. producer - queue - subscriber (PubSub)
    3. producer/consumer - queue - producer/consumer (Request-Reply , Reply-Request)

    1. route message from source to destination (FIFO)
    2. facilitate asynchronous behaviour
    3. cross module communication
    4. Provide temporary storage until processed/consumed
    5. breakdown application (loosely coupled)

9. [10/01/2022] []()
10. [11/01/2022][]()
11. [12/01/2022][]()
12. [13/01/2022][]()
13. [14/01/2022][]()
14. [15/01/2022][]()
15. [16/01/2022][]()
16. [17/01/2022][]()
17. [18/01/2022][]()
18. [19/01/2022][]()
19. [20/01/2022][]()   
