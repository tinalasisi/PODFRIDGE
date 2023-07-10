#!/bin/sh
#SBATCH --job-name=known_vs_tested_simulation
#SBATCH --output=/project/jazlynmo_738/Tina/PODFRIDGE_upload/logfiles/known_vs_tested_simulation_%j.out
#SBATCH --error=/project/jazlynmo_738/Tina/PODFRIDGE_upload/logfiles/known_vs_tested_simulation_%j.err
#SBATCH --time=16:00:00
#SBATCH -p epyc-64
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=64
#SBATCH --mem-per-cpu=4000MB
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=tlasisi@usc.edu

module load gcc/11.3.0 openblas/0.3.20 r/4.3.0

Rscript /project/jazlynmo_738/Tina/PODFRIDGE_upload/code/known-vs-tested_simulation_script.R 100000 5000
