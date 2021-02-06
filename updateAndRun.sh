#!/bin/bash
set -e

commit_pyrep=WithRestrictedGoals
commit_realrobots=PyRep

echo "Updating repositories"

cd /root/pyrepgym
git checkout $commit_pyrep
cd /root/real_robots
git checkout $commit_realrobots
cd /root/REAL2020_starter_kit

echo "Starting Simulation"
roscore > roslog.txt &
python /root/pyrepgym/simlaunch.py &
sleep 30
python /root/pyrepgym/imageGenerator.py &
sleep 30
python local_evaluation

