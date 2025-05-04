jconsole -J--add-modules=jdk.unsupported -J-Djava.class.path=./jboss-cli-client.jar
#service:jmx:http-remoting-jmx://localhost:9990

#service:jmx:remote+http://localhost:9990
#visualvm_22/bin/visualvm --cp:a jboss-cli-client.jar
