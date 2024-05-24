# system-design
---
Linux

* [Linux](linux/linux.md)
* [commands](linux/linux-commands.md)
* [OS commands](linux/os-commands.md)

---

1. [02/01/2022] - [what it is?](https://www.educative.io/blog/system-design-primer#what)
2. [03/01/2022] [Kinds of System]
    - Horizontal Scaling
    - Vertical Scaling
    - Monolithic application
    - Micro services
3. [04/01/2022]
    - Requirement Clarification (Functional & Non-Functional)
    - Estimation of Important data (queries/traffic/storage)
    - Data Flow (Data model & How data will flow)
      & [choosing Databases](https://www.educative.io/blog/database-design-tutorial)
    - High level design & Detailed Design
    - Identifying Bottlenecks/Resolve from Detailed Design & mitigating them

4. [05/01/2022] [HW/SW](https://www.educative.io/blog/hardware-vs-software-components-computer)
    - Architectural Design - Abstract Version
    - HighLevel Design - part break down into sub system and modules
    - Detailed Design - implementation

[System design fundamentals]

5. [06/01/2022] [System design fundamentals](https://www.educative.io/blog/complete-guide-to-system-design)
    - Scalability - Scaling(Horizontal/Vertical)
    - [Microservice Architecture](https://www.educative.io/blog/complete-guide-to-system-design#microservices)
    - [Proxy Server](https://www.educative.io/edpresso/what-is-a-proxy-server)
        - forward proxy
        - separate user from website (what they are browsing)
        - Privacy/Speed/Bandwidth/Activity logging
    - [CAP Theorem](https://www.educative.io/blog/what-is-cap-theorem#whatiscaptheorem)

        - Consistency : all nodes see same data (most recent write while read across all servers)
        - Availability : (distributed systems) should respond without failure (but not gurantee on response with most
          recent write)
        - Partition Tolerance : break in communication b/w nodes (system does not fail)
        - **PACELC Theorem** - build on CAP & states that an additional trade-off exists: between latency and
          consistency.
        - [Ref 1]https://www.youtube.com/watch?v=eWMgsk7mpFc
          [Ref 2]https://www.youtube.com/watch?v=8UryASGBiR4

6. [07/01/2022] [Redundancy & Replication](https://www.educative.io/blog/complete-guide-to-system-design#redundancyandreplication)
7. [08/01/2022] [Storage](https://www.educative.io/blog/complete-guide-to-system-design#storage)
    1. Block Storage [SAN]
        - Stored as block (each block has unique identifier for ease accessibility)
        - mounted on hypervisor layer on virtual/physical machines
        - boot from volume (os,db) - higher performance/lowest possible latency
    2. File Storage [NTFS/NFS]
        - maintains Hierarchical  (folders/files)
        - can have lock on file level
        - simulataneous rd/wr
        - [Block Vs File](https://www.youtube.com/watch?v=PmxWTTpXNLI)
    3. Object Storage
        - designed to handle large amount of unstructured data
        - dynamic scalibility (backup/archive/log files) -TB/PB/even more
    4. RAID - Redundant Disk Array
        - multiple disk - to build faster,bigger and more reliable system
        - looks like disk , but internally its complex tool

8. [09/01/2022] [Message queues](https://www.educative.io/blog/complete-guide-to-system-design#messagequeues)

   **Message** - data needs to get transmitted (different types of data)
   **Queue** - Holds in order and deliver

    - producer - queue - consumer **(P2P)**
    - producer - queue - subscriber **(PubSub)**
    - producer/consumer - queue - producer/consumer **(Request-Reply , Reply-Request)**

    - route message from source to destination (FIFO)
    - facilitate asynchronous behaviour
    - cross module communication
    - Provide temporary storage until processed/consumed
    - breakdown application (loosely coupled)

   **[Messaging System-Kafka](https://www.ibm.com/cloud/learn/message-queues?utm_medium=OSocial&utm_source=Youtube&utm_content=CPIWW&utm_id=YTCard-101-What-is-Message-Queuing-LH-Message-Queues-Guide) **
    - 2011/LinkedIn/Internal Use
    - Popular distributed Streaming platform (handle more than 1 trillion/day)
    - consists of server/client - communicate through TCP protocol
    - **system allow to store/read/write/process events**

    - **Records-Produced are replicated/partitioned in such way that allow high volume of users access application
      simultaneously.**
    - ex . Location sharing , data gathering

      **[Core API of kafka](https://www.youtube.com/watch?v=aj9CDZm0Glc)**

    * Producer API (produce streams of data to topics)
    * Consumer API (subscribe to topics)
    * Stream API (Transform/leverage data)
    * Connector API (Reusable Producer/consumer)

9. [10/01/2022] [What happens after URL enter into browser?](https://www.linkedin.com/posts/alex-xu-a8131b11_systemdesign-coding-interviewtips-activity-6896855295549681664-Ge0c)
    - URL (scheme,domain,path,resource)
    - browser looks up the IP address (to make process fast cached at different layers)
        - browser cache, os cache,local network cache, ISP cache
        - if IP address not found, then goes on DNS server lookup (recursive lookup until it founds)
    - if we have IP address , ** then browser establish TCP connection with server **
    - browser send HTTP(scheme) request to server
    - server process & sends back the response and browser renders the html content
10. [11/01/2022][How DNS look up works?](https://www.linkedin.com/posts/alex-xu-a8131b11_systemdesign-coding-interviewtips-activity-6897218354021564417-SzIs)
    - DNS acts as a address book (translates human-readable domain names into machine-readable IP addresses)
    - for Better scalability, DNS server organized into hierarchical tree structure
    - 3 basic level - root name server, tld server, authoritative server
    - root name server - store IP address of TLD server and 13 logical root server
    - tld server - stores IP address of authoritative server (like .test , count code server)
    - authoritative server - actual returns the answer to DNS query (we can register authoritative name server with
      domain name registrar such as godaddy,namecheap..)
        - DNS lookup average takes 20-120 milli secs to complete.
11. [12/01/2022][What happens when outlook client(alice) sends email to gmail client(bob)?](https://www.linkedin.com/feed/update/urn:li:activity:6891786683113721856/)
    - SMTP Server (store) & communication between client and mail server also SMTP
        - standard mail transfer protocol - used for sending mail from 1 server to another
    - IMAP/POP server (fetch when log in)
        - POP (Post office protocol) - used for retrieve/download email from remote server to local server , delete from
          mail server
        - IMAP (Internet mail address protocol) - used for download from local server (commonly used protocol for
          individual accounts)

12. [13/01/2022][Why is Redis So fast?](https://www.linkedin.com/posts/alex-xu-a8131b11_systemdesign-coding-interviewtips-activity-6904466435716763648-FnF0)
    - RAM based data store
    - IO Multi threaded and single threaded execution for execution efficiency
    - lower level data structures
13. [14/01/2022] [What is SSH?](https://www.techtarget.com/searchsecurity/definition/Secure-Shell)
    1. how does SSH work ?
    2. first internet application protocol - telnet
    3. provides password, public key authentication , as well encrypted data communications between 2 computers over an
       network (internet)
    4. utilites : ssh - connection between machine, file transfer(scp),secure login (slogin)
    5. history, SSH-1 deprectaed  (not safe to use), SSH-2 (15 years)
---
