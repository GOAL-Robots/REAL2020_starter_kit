#!/bin/bash
set -e

container_seed=$RANDOM
commit_pyrep=f538303
commit_realrobots=PyRep

echo "*******"
echo "Updating repositories"

cd /root/pyrepgym
git pull
git checkout $commit_pyrep
cd /root/real_robots
git pull
git checkout $commit_realrobots
cd /root/REAL2020_starter_kit

echo "******"
echo "Starting Simulation"
Xvfb :99 -screen 0 1400x900x24 -ac +extension GLX +render -noreset &
export DISPLAY=:99
roscore &> roscore${container_seed}.log &
python3 /root/pyrepgym/simlaunch.py &> simlaunch${container_seed}.log &
sleep 30
python3 /root/pyrepgym/imageGenerator.py &> imagegenerator${container_seed}.log &
sleep 30
python3 local_evaluation.py &> simulation${container_seed}.log

