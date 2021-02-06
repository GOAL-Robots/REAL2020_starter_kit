#!/bin/bash
set -e

container_seed=$1
commit_pyrep=WithRestrictedGoals
commit_realrobots=PyRep

echo "\n\nUpdating repositories"

cd /root/pyrepgym
git pull
git checkout $commit_pyrep
cd /root/real_robots
git pull
git checkout $commit_realrobots
cd /root/REAL2020_starter_kit

echo "\n\nStarting Simulation"
roscore > roscore${container_seed}.log &
python3 ./pyrepgym/simlaunch.py > simlaunch${container_seed}.log &
sleep 30
python3 ./pyrepgym/imageGenerator.py > imagegenerator${container_seed}.log &
sleep 30
python3 local_evaluation.py

