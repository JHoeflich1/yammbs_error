#!/bin/bash
#SBATCH -J images
#SBATCH -p amilan
#SBATCH -t 2:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=64 
#SBATCH --account ucb500_asc1
#SBATCH --export ALL
#SBATCH -o images%x.out
#SBATCH -e images%x.err

date
hostname

#module purge
#source /projects/nasc4134/pkgs/gromacs-2023.1/bin/GMXRC
#ml gcc/11.2.0
#ml openmpi/4.1.1
#ml gromacs

# Load Conda environment
source ~/.bashrc
ml anaconda
conda activate yammbs-dev

# Run Python script
#python ./run_torsion_comparisons_JH_images.py
python ./run_torsion_comparisons.py

date

