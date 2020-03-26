FROM knightxun/spark:2.4

RUN apt update && apt install -y wget
RUN wget https://nebula-graph.oss-accelerate.aliyuncs.com/jar-packages/sst.generator-1.0.0-beta.jar -O /home/sst.generator.jar 
ADD spark.conf /home
ADD run.sh /root/

ENTRYPOINT [ "bash", "/root/run.sh" ]




