#----------------------------
#-- Check Java Version
#----------------------------
java -version
#java version "1.6.0_65"
#Java(TM) SE Runtime Environment (build 1.6.0_65-b14-468-11M4833)
#Java HotSpot(TM) 64-Bit Server VM (build 20.65-b04-468, mixed mode)

#----------------------------
#-- Start robot
#----------------------------
export aimlRoot=/yourpath/program-ab
export aimlAbLib=$aimlRoot/lib
export CLASSPATH=$CLASSPATH:$aimlAbLib/sanmoku-feature-ex-0.0.1.jar:$aimlAbLib/commons-codec-1.6.jar:$aimlAbLib/commons-logging-1.1.1.jar:$aimlAbLib/hamcrest-all-1.3.jar:$aimlAbLib/httpclient-4.2.1.jar:$aimlAbLib/httpclient-cache-4.2.1.jar:$aimlAbLib/httpcore-4.2.1.jar:$aimlAbLib/httpmime-4.2.1.jar:$aimlAbLib/jgoodies-common.jar:$aimlAbLib/jgoodies-forms.jar:$aimlAbLib/joda-time-2.1.jar:$aimlAbLib/json-20090211.jar:$aimlAbLib/junit-4.11.jar:$aimlAbLib/sanmoku-0.0.5.jar:$aimlAbLib/sanmoku-feature-ex-0.0.1.jar
#or
export CLASSPATH=$aimlAbLib/sanmoku-feature-ex-0.0.1.jar:$aimlAbLib/commons-codec-1.6.jar:$aimlAbLib/commons-logging-1.1.1.jar:$aimlAbLib/hamcrest-all-1.3.jar:$aimlAbLib/httpclient-4.2.1.jar:$aimlAbLib/httpclient-cache-4.2.1.jar:$aimlAbLib/httpcore-4.2.1.jar:$aimlAbLib/httpmime-4.2.1.jar:$aimlAbLib/jgoodies-common.jar:$aimlAbLib/jgoodies-forms.jar:$aimlAbLib/joda-time-2.1.jar:$aimlAbLib/json-20090211.jar:$aimlAbLib/junit-4.11.jar:$aimlAbLib/sanmoku-0.0.5.jar:$aimlAbLib/sanmoku-feature-ex-0.0.1.jar
#----------------------------
# Compile the source
#----------------------------
mkdir ./bin-jdk1.6
javac -target 1.6 -d bin-jdk1.5 -sourcepath src src/Main.java
cd ./bin-jdk1.5
jar cp 

#----------------------------
# Compile the source
#----------------------------
mkdir ./bin-jdk1.6.0_65
javac -d bin-jdk1.6.0_65 -sourcepath src src/Main.java
cd ./bin-jdk1.6.0_65
jar cvf Ab-jdk1.6.0_65.jar ./Main.class ./org
mv Ab-jdk1.6.0_65.jar ../lib
cd ../lib

#----------------------------
# Run jar file to start
#----------------------------
ln -s $aimlRoot/bots $aimlRoot/lib/bots
java -cp $aimlRoot/lib/Ab-jdk1.6.0_65.jar Main bot=alice2 action=chat trace=true morph=false

#----------------------------
# Run it from class file directly
#----------------------------
ln -s $aimlRoot/bots $aimlRoot/bin-jdk1.6.0_65/bots
cd bin-jdk1.6.0_65
java -cp ./ Main bot=alice2 action=chat trace=true morph=false



#----------------------------
#-- Run class file directly
#----------------------------
cd bin-jdk1.5
java -cp ./ Main bot=alice2 action=chat trace=true morph=false



