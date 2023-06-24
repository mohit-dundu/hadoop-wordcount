#Hadoop Installation
curl https://dlcdn.apache.org/hadoop/common/hadoop-3.2.3/hadoop-3.2.3.tar.gz --output hadoop-3.2.3.tar.gz
tar -xvf hadoop-3.2.3.tar.gz
cd hadoop-3.2.3
#Verfying if installed upon seeing doc files
bin/hadoop
#Downloading a sample text file
curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-BD0225EN-SkillsNetwork/labs/data/data.txt --output data.txt
#Running Mapreduce wordcount function
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.3.jar wordcount data.txt output
#Checking if the output is Success
ls output
#Printing word counts
cat  output/part-r-00000