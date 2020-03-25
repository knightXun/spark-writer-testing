FROM k8s.gcr.io/spark:1.5.1_v3
RUN apt install -y wget
RUN wget https://nebula-graph.oss-accelerate.aliyuncs.com/jar-packages/sst.generator-1.0.0-beta.jar -O /home/sst.generator.jar 

ADD run.sh /root/

ENTRYPOINT [ "bash", "/root/run.sh" ]




