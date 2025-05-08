#!/bin/bash
#SBATCH --job-name=Stacks_Eelgrass
#SBATCH --account=coenv
#SBATCH --partition=cpu-g2
#SBATCH --nodes=1
#SBATCH --cpus-per-task=20
## Walltime (days-hours:minutes:seconds format)
#SBATCH --time=2-8:00:00
## Memory per node
#SBATCH --mem=200G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=lbreit@uw.edu

## ENVIRONMENT
#source /gscratch/merlab/software/miniconda3/etc/profile.d/conda.sh
#conda activate stacks_env
module load coenv/stacks

## VARIABLES
DATASET="test2"
ALL_DEDUP="/gscratch/scrubbed/lbreit/fish546/SORTED/${DATASET}"
POPMAP="/mmfs1/home/lbreit/fish546/popmap_test2.txt"
REFMAP_DIR="/gscratch/scrubbed/lbreit/fish546/REFMAP/${DATASET}"
#REPORT=/mmfs1/home/lbreit/reports

## CODE
mkdir -p ${REFMAP_DIR}

# Run the reference-based Stacks pipeline
ref_map.pl \
--samples ${ALL_DEDUP} \
--popmap ${POPMAP} \
-o ${REFMAP_DIR} \
-T 20 \
-X "populations: --vcf" \
-X "populations: --ordered-export"
#&>> $REPORT/refmap_RAD_${DATASET}.txt