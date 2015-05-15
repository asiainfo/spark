#!/bin/bash
spark_version = "1.3.1-oc" 
hadoop_common_version = '2.5.0-cdh5.2.1'
nohup sh make-distribution.sh --tgz --skip-java-test -Pyarn -Phive -Phive-thriftserver -Pspark-ganglia-lgpl -Phadoop-2.3 -Dhadoop.version=$hadoop_common_version -Dyarn.version=$hadoop_common_version -DskipTests  > build_`date +%Y_%m_%d_%H_%M_%S`.log 2>&1 &
mv spark-${spark_version}-bin-${hadoop_common_version}.tgz spark-${spark_version}-${hadoop_common_version}.tar.gz")
