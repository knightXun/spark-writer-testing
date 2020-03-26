FROM knightxun/spark:2.4

COPY sst.generator-1.0.0-rc3.jar /home/sst.generator.jar 
ADD spark.conf /home
ADD run.sh /root/

ENTRYPOINT [ "bash", "/root/run.sh" ]




