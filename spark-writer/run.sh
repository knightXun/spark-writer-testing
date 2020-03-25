#!/bin/bash 

host=$1
port=$2
master_url=$3


echo $host 
echo $port

sed -i "" "s/HOST/${host}/" spark.conf
sed -i "" "s/PORT/${port}/" spark.conf 

/opt/spark-1.5.1-bin-hadoop2.6/bin/spark-submit \
 --class com.vesoft.nebula.tools.generator.v2.SparkClientGenerator \
 --master ${master_url} \
 /home/sst.generator-1.0.0-beta.jar -c conf/test.conf -h -d


