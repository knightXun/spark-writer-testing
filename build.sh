#!/usr/bin/env bash

cd spark/

docker build -t knightxun/spark:1.5.1 . 
docker push knightxun/spark:1.5.1

cd ../spark-writer

docker build -t knightxun/spark-writer . 
docker push knightxun/spark-writer


