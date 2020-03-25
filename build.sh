#!/usr/bin/env bash

cd spark/
python3 data-gen.py 
docker build -t knightxun/spark:1.5.1 . 
docker push knightxun/spark:1.5.1

rm -rf data.json

cd ../spark-writer

docker build -t knightxun/spark-writer . 
docker push knightxun/spark-writer


