#!/bin/sh

git config --global --unset core.autocrlf

rm -rf BuildTools.jar
wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar -O BuildTools.jar

export MAVEN_OPTS="-Xmx2G"
java -XX:+UnlockExperimentalVMOptions -XX:+UseContainerSupport -Xmx2G -jar BuildTools.jar "$@"
