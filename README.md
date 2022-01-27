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
        - forward proxy<br>
        - separate user from website (what they are browsing)<br>
        - Privacy/Speed/Bandwidth/Activity logging<br>
    - [CAP Theorem](https://www.educative.io/blog/what-is-cap-theorem#whatiscaptheorem) <br>

        - Consistency : all nodes see same data (most recent write while read across all servers)<br>
        - Availability : (distributed systems) should respond without failure (but not gurantee on response with most
          recent write)<br>
        - Partition Tolerance : break in communication b/w nodes (system does not fail)<br>
        - **PACELC Theorem** - build on CAP & states that an additional trade-off exists: between latency and
          consistency.<br>
        - [Ref 1]https://www.youtube.com/watch?v=eWMgsk7mpFc <br>
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

8. [09/01/2022] [Message queues](https://www.educative.io/blog/complete-guide-to-system-design#messagequeues) <br>

   **Message** - data needs to get transmitted (different types of data)<br>
   **Queue** - Holds in order and deliver

    - producer - queue - consumer **(P2P)**
    - producer - queue - subscriber **(PubSub)**
    - producer/consumer - queue - producer/consumer **(Request-Reply , Reply-Request)**
      <br><br>
    - route message from source to destination (FIFO)<br>
    - facilitate asynchronous behaviour<br>
    - cross module communication<br>
    - Provide temporary storage until processed/consumed<br>
    - breakdown application (loosely coupled)<br>

   **[Messaging System-Kafka]**
    - 2011/LinkedIn/Internal Use
    - Popular distributed Streaming platform (handle more than 1 trillion/day)
    - consists of server/client - communicate through TCP protocol
    - **system allow to store/read/write/process events**

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
