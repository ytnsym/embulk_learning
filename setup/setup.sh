#!/bin/bash

# Install openjdk
yum install -y java-1.8.0-openjdk

# Java PATH settings
echo 'export JAVA_HOME=~/.java/jre1.8.0_144' >> /home/ec2-user/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> /home/ec2-user/.bashrc
echo 'export CLASSPATH=.:$JAVA_HOME/jre/lib:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar' >> /home/ec2-user/.bashrc

# Install Embulk
mkdir -p /home/ec2-user/.embulk/bin
curl -L "https://dl.embulk.org/embulk-latest.jar" -o /home/ec2-user/.embulk/bin/embulk
chmod +x /home/ec2-user/.embulk/bin/embulk

# Embulk PATH settings
echo 'export PATH="$HOME/.embulk/bin:$PATH"' >> /home/ec2-user/.bashrc

source /home/ec2-user/.bashrc

chown -R ec2-user:ec2-user /home/ec2-user/.embulk