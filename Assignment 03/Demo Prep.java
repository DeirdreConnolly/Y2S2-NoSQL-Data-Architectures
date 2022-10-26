// What does a shard contain?
    Application data, subset of the sharded data.

   
// Where does the sharding start, one line of code?
    4.shard_collection.bat
    C:\MongoDB_3_0\bin\mongo.exe --shell 4.shard_collection.js

   
// What are shard keys?
    Field or set of fields whose values are used to logically group docs into a single chunk.
    Determines the distribution of a collection's documents among the cluster's shards.
    Determines the range of values in how a dataset should be partitioned.

   
// What is index locality?
    How close together subsequent inserts are in the index.

   
// What is the problem with removing shard key?
    Chunks become imbalanced as migrations fail.
    Shard keys must be indexed for chunk migration to happen.

   
// Why pick a particular shard key?
    Pick something that is not ascending?
   
    All inserts, updates, and deletes would each be distributed uniformly across all of the shards in the cluster.
    All queries would be uniformly distributed across all of the shards in the cluster.
    All operations would only target the shards of interest.
    Similarly, a query would never be sent to a shard which holds none of the data being queried.
   
    Criteria for a good shard key:
        Cardinality
        Write Distribution
        Read Distribution
        Read Targeting
        Read Locality

       
// What is the unit inside of a shard? What is its default size?
    Chunk, 64mb.

   
// Where is code for change chunk size?
    2.setup_cluster.js
    Section 2: Modify chunk size
    db.settings.save( { _id:"chunksize", value: 1 } )
   

// Explain migration.
    Process of moving chunks between shards when some shards have a lot more chunks than others.
    More expensive than splitting.

   
// Why index before shard key?

--

FROM MAREK:
CAP theorem/the whole Scale up and Scale Out stuff
Clusters, what they are and what they're composed of, know about sharding what it is and how it's done
Know in brief about what replication is (pretty easy)
Talk in detail about the whole 3x config server > mongo router > shards setup and describe it and parts of it some questions asked that I remember:
"Why is it 3 config servers?" TWO IS TOO FEW FOR FAILOVER, THREE IS TOO MANY TO BE EFFICIENT also it's for the sake of replication to keep them backed up) also know about what's stored on the config servers
"What is the purpose of the mongo router" (can answer this one yourself)
"How many mongo routers can you have or some shit" (each data centre pretty much has one etc. etc.)
Know how hash sharding works
Know in detail how shard keys work
Name the 4(or 3?) things that could go wrong if you enter a wrong shard key
Know about migration (transfering stuff from shard to shard, in this case chunks)
Know about chunks, what they are and their maximum size (64 megabytes)

--

FROM PJ:
What is arbiter used for? Does he contain any data? DECIDES WHO IS NEXT MASTER
Are there any arbiters in the shard? NONE IN THE REPLICA SET?
How many config servers in a cluster? THREE
What is the problem with only one? CONFIG SERVERS MUST RESIDE ON SEPARATE MACHINES FOR REDUNDANCY. GUARANTEES CONSISTENCY.
What is metadata? SET OF DATA THAT DESCRIBES OTHER DATA. STORES LOCANTION OF EACH DB, COLLECTIONS
What does mongoS contain? COPY OF CONFIG
How many configurations can you have?
What kind of problems can you have from only one interface?
IDEAL SHARD IS ONE PER MONGOS
How does sharding work? PARTITIONS LARGE DATA-SETS INTO SMALLER PIECES, EACH SHARD DOES ITS OWN READ/WRITE SO THAT NO SINGLE MACHINE HAS TO HANDLE ALL OF THE DATA ITSELF
(3 parts configure server, shard & ???)
Code where you find the shard key? -> sh.shardCollection(”DATABASENAME.COLLECTIONNAME”,{SHARDKEY})
Where is sharding effectivily starting?
Why kind of assocations between shard key and ???
SHARD KEY HAS ONE PROPERTY THAT IS ASSOCIATED WITH THE INDEX, THEY ARE MATCHED VIA INDEX LOCALITY
What problem would arise if I remove the shard key? POOR TARGETING, SHARD KEY IS NOT PRESENTED IN QUERIES SO THEY WILL NOT BE ROUTED TO THE CORRECT SHARD
Why do I pick ENTER RESTAURANT NAME as a shard key? CANNOT PICK _ID AS ITS VALUES ARE STRICTLY ASCENDING, INSTEAD PICK SOMETHING THAT IS NOT ACSENDING
What is the unit inside of a shard? CHUNK
What is the default size of a chunk? 64MB
Code to change the chunk size? IMMUTABLE, CANNOT BE CHANGED/UPDATED?
How does migration work? MOVES CHUNKS BETWEEN SHARDS WHEN SOME SHARDS HAVE A LOT MORE CHUNKS THAN OTHERS
Is migration cheap? NO, MORE EXPENSIVE THAN SPLITTING.
How do we avoid migration?
Topics, shards, chunks, mongoS, shard key (why index before shard key)




// MAREK DEMO //

// What is CAP, what does is stand for?
    Consistency, availability, partition tolerance.

   
// What is relationship between cluster and CAP?
    CP?

   
// What are 3 techniques to handle big data?
    Scale up, scale down, scale out.

   
// Which technique does a cluster use?
    Scale out.

   
// What is scale up?
    Increase physical resources (memory, storage, cpu)

   
// What is scale down?
    Reduce data.
   

// What is scale out?
    Use many separate computers (cluster of machines).
   

// What kind of component does cluster contain?
    Nodes, cluster objects.
   

// What is a shard?
    A horizontal partition of data, a subset of the entire data.
   

// What kind of architecture can you use for a shard?
    Thin client? Horiztonal partition?

   
// What are the main features of a replica set?
    Provides redundancy.
    Increases data availability as there are multiple copies of the same data.
    Failover, disaster recovery.
    One node is primary (master), others are secondary (slaves).
    The master receives all write operations.
   

// Why do we need three configs?
    When mongos process write to the configs, it uses two-phase commit.
    Config servers must reside on separate machines for redundancy.
    Guarantees consistency.
   

// What is the problem if you have less than 3? ^ related to that question.
    If one or two config servers become unavailable, the cluster’s metadata becomes read-only.
    You can still read and write data from the shards, but no chunk migrations or splits will occur until all three servers are available


// ^Related what'll happen if I had 5? What is the problem with more than 3?
    Consistency, takes more time.

// Two types of consistency, what are they?
    Eventual consistency?
    Sequential?
    Logical?

// What is inside of your config?
    Metadata.
   

// Do all configs have different or same metadata?


// How many ROUTERS??? can you have?


// What is ROUTER???




