#!/usr/bin/env bash

cd spark/
python3 data-gen.py 
docker build -t knightxun/spark:2.4 . 
docker push knightxun/spark:2.4

rm -rf data.json

cd ../spark-writer

docker build -t knightxun/spark-writer . 
docker push knightxun/spark-writer


