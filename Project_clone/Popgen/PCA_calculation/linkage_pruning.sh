#! /bin/bash -l 
#SBATCH -A PROJECT
#SBATCH -p core
#SBATCH -n 10
#SBATCH -t 1:00:00
#SBATCH -J linkage_pruning

# go to this directory:
cd /path/to/Popgen/PCA_calculation

# load software modules:
module load bioinfo-tools
module load plink

# perform linkage pruning:
plink --vcf ../../Variant_calling/Filtering/filtered_vcf_name.vcf.gz --double-id --allow-extra-chr --set-missing-var-ids @:# --indep-pairwise 50 10 0.1 --out bsoroensis
