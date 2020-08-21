# 启动主节点
docker run -itd --name spark-master -p 6066:6066 -p 7077:7077 -p 8081:8080 -h spark-master spark:v2.4.0 ./bin/spark-class org.apache.spark.deploy.master.Master
# 启动从节点
docker run -itd --name spark-worker -P -h spark-worker --link spark-master spark:v2.4.0 ./bin/spark-class org.apache.spark.deploy.worker.Worker spark://spark-master:7077