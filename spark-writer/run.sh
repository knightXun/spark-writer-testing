#!/bin/bash 

host=$1
port=$2

echo $host 
echo $port

sed -i  "s/HOST/${host}/" /home/spark.conf
sed -i  "s/PORT/${port}/" /home/spark.conf 

/opt/bitnami/spark/bin/spark-submit \
 --class com.vesoft.nebula.tools.generator.v2.SparkClientGenerator \
 --master spark://spark-master-svc:7077 \
 /home/sst.generator.jar -c /home/spark.conf -h -d


