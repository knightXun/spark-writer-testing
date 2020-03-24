cd spark/

helm install spark helm-spark/

cd ../spark-writer

kubectl create -f spark-writer.yaml