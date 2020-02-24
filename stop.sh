BASEDIR=$(dirname "$0")
cd $BASEDIR
for folder in elasticsearch mysql hadoop nginx postgresql zookeeper cassandra tomcat mongodb solr kafka activemq websphere ceph jboss hbase weblogic redis memcached couchbase squid postfix apache haproxy spark cockroachdb lighttpd rabbitmq
do
    echo "Running ${folder} ...."
    cd ${folder}
    sudo docker-compose stop
    echo "-------------- ${folder} Done--------------"
    cd ..
done
