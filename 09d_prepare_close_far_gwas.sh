#!/bin/bash
#SBATCH -J prepare_close_far_GWAS
#SBATCH -o prepare_close_far_GWAS.o%j
#SBATCH -e prepare_close_far_GWAS.o%j
#SBATCH -p normal
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -t 1:00:00
#SBATCH -A OTH21148
#SBATCH --mail-user=joyce.wang@utexas.edu
#SBATCH --mail-type=begin
#SBATCH --mail-type=end

set -e

source /work2/06568/joyce_w/stampede2/software/anaconda3/etc/profile.d/conda.sh
conda init bash
conda activate pgs

# Prepare IDs for the close and far groups
Rscript 09e_prepare_close_far_gwas.R

conda deactivate
