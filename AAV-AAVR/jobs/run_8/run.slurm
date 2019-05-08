#! /bin/bash
#SBATCH -J zk-virus
#SBATCH -p SP-GPUk40
#SBATCH -N 7
#SBATCH --ntasks=7
#SBATCH --ntasks-per-node=1
#SBATCH --output=%j.out
#SBATCH --error=%j.err

source /Share/THUDATA/Softwares/mpich3.3.sh

srun ~/mingxu/THUNDER/build_dev/thunder_gpu para.json
# srun ~/mingxu/THUNDER/build_dev/thunder_gpu para_wrong.json
