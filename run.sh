cd spark/

helm install spark helm/

cd ../spark-writer

kubectl create -f spark-writer.yaml