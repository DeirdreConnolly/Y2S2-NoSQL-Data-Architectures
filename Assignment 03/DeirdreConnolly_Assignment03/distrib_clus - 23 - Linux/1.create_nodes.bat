REM #
REM #-------------------------------------------------#
REM #						      					  #
REM # 0. Set myName to the name of the computer       #
REM #						      					  #
REM #-------------------------------------------------#
REM #	
SET myName=COM-IT13-51613.student-cit
REM #
REM #-------------------------------------------------#
REM #						                          #
REM # 1. YOUR COMMENT: DESCRIBE WHAT 1.1 and 1.2 Do?  #
REM #						                          #
REM #-------------------------------------------------#
REM #	
REM # 1.1. Create folders for each directory
REM #	
mkdir "~\Desktop\distribc\cfg0"
mkdir "~\Desktop\distribc\cfg1"
mkdir "~\Desktop\distribc\cfg2"
REM #	
REM # 1.2. Configure server with oplog size set to 1MB, dbpath, and port number
REM #	
start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --configsvr --dbpath "~\Desktop\distribc\cfg0" --port 26050
start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --configsvr --dbpath "~\Desktop\distribc\cfg1" --port 26051
start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --configsvr --dbpath "~\Desktop\distribc\cfg2" --port 26052
REM #	
REM #-------------------------------------------------#
REM #						                          #
REM # 2. YOUR COMMENT: DESCRIBE WHAT 2.1 and 2.2 Do?  #
REM #						                          #
REM #-------------------------------------------------#
REM #	
REM # 2.1. Specify config servers for the sharded cluster (/b command starts application without creating a new window)
REM #	
start /b \bin\MongoDB_4_0\bin\mongos.exe --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052
REM #	
REM # 2.2. Configure server with the set physical machine name and port for each node
REM #	
start /b \bin\MongoDB_4_0\bin\mongos.exe  --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052 --port 26061
start /b \bin\MongoDB_4_0\bin\mongos.exe  --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052 --port 26062
start /b \bin\MongoDB_4_0\bin\mongos.exe  --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052 --port 26063
REM #	
REM #-------------------------------------------------#
REM #						                          #
REM # 3. YOUR COMMENT: DESCRIBE WHAT 3.1 and 3.2 Do?  #
REM #						                          #
REM #-------------------------------------------------#
REM #	
REM # 3.1. Make a directory on the desktop for each node
REM #	
mkdir "~\Desktop\distribc\dublin0"
mkdir "~\Desktop\distribc\dublin1"
mkdir "~\Desktop\distribc\dublin2"
mkdir "~\Desktop\distribc\cork0"
mkdir "~\Desktop\distribc\cork1"
mkdir "~\Desktop\distribc\cork2"
mkdir "~\Desktop\distribc\limerick0"
mkdir "~\Desktop\distribc\limerick1"
mkdir "~\Desktop\distribc\limerick2"
mkdir "~\Desktop\distribc\galway0"
mkdir "~\Desktop\distribc\galway1"
mkdir "~\Desktop\distribc\galway2"
REM #	
REM # 3.2. Create replica set for each node, specifying replSet name, oplog size in MB, directory path, and port number
REM #	
start /b \bin\MongoDB_4_0\bin\mongod.exe --replSet dublin --oplogSize 1 --dbpath "~\Desktop\distribc\dublin0" --port 27000
start /b \bin\MongoDB_4_0\bin\mongod.exe --replSet dublin --oplogSize 1 --dbpath "~\Desktop\distribc\dublin1" --port 27001

start /b \bin\MongoDB_4_0\bin\mongod.exe --replSet dublin --oplogSize 1 --dbpath "~\Desktop\distribc\dublin2" --port 27002

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet cork --dbpath "~\Desktop\distribc\cork0" --port 27100

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet cork --dbpath "~\Desktop\distribc\cork1" --port 27101

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet cork --dbpath "~\Desktop\distribc\cork2" --port 27102

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet limerick --dbpath "~\Desktop\distribc\limerick0" --port 27200

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet limerick --dbpath "~\Desktop\distribc\limerick1" --port 27201

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet limerick --dbpath "~\Desktop\distribc\limerick2" --port 27202

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet galway --dbpath "~\Desktop\distribc\galway0" --port 27300

start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet galway --dbpath "~\Desktop\distribc\galway1" --port 27301
start /b \bin\MongoDB_4_0\bin\mongod.exe --oplogSize 1 --replSet galway --dbpath "~\Desktop\distribc\galway2" --port 27302

REM #	
