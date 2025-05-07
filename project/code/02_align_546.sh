#!/bin/bash
#SBATCH --job-name=Align_Eelgrass
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

# Here I align and sort all the datasets that are available for eelgrass using bwa and samtools

##############################
########## ALIGNING ##########
##############################

#################### FOR THE DATASETS WITH INLINE & INDEX BARCODES ####################

## CODE


for DATASET in test2;
do

## ENVIRONMENT
source /gscratch/merlab/software/miniconda3/etc/profile.d/conda.sh
conda activate bwa_env

## VARIABLES

ind_ID=$(cat /mmfs1/home/lbreit/fish546/individuals_${DATASET}.txt | cut -f1)
#creates variables based on the first col in individuals_rad.txt file, i.e., all the sample names
REF=/mmfs1/home/lbreit/fish546/reference_genome/assembly/Zmarina_668_v2.0.fa
# creates variable REF that is the reference genome .fa
INPUT=/gscratch/scrubbed/lbreit/fish546/DEMULTIPLEXED/${DATASET}
# creates variable INPUT that is the name of the sample stored in the DEMULTIPLEXED file
OUTPUT1=/gscratch/scrubbed/lbreit/fish546/ALIGNED/${DATASET}
# creates variable OUTPUT1 that is the name of the sample (now aligned) and stored in the ALIGNED file
OUTPUT2=/gscratch/scrubbed/lbreit/fish546/SORTED/${DATASET}
# creates variable OUTPUT2 that is the name of the sample (referring to sorted sample file) and stored in the SORTED directory
REPORT=/mmfs1/home/lbreit/fish546/aligned_${DATASET}.txt
# creates variable REPORT that is the name of the report that will be stored at aligned_rad.txt

## CODE

mkdir -p ${INPUT} #make directory (see above for complete path) if it doesn't already exist
mkdir -p ${OUTPUT1} #make directory (see above for complete path) if it doesn't already exist
mkdir -p ${OUTPUT2} #make directory (see above for complete path) if it doesn't already exist

## Aligning

# a for loop that aligns each .fq file according to name of sample and outputs a .sam file
for i in ${ind_ID};
do
  bwa mem -t 20 -T 30 $REF $INPUT/${i}.fq > $OUTPUT1/${i}.sam 2>> $REPORT
done

conda deactivate #deactivate conda env

## Sorting
conda activate samtools_env

# a for loop that sorts each .sam file (using samtools) and creates a .bam file
for i in ${ind_ID};
do
  samtools view -b -q 30 $OUTPUT1/${i}.sam > $OUTPUT1/${i}.bam
  samtools sort $OUTPUT1/${i}.bam > $OUTPUT2/${i}.bam
  samtools index $OUTPUT2/${i}.bam
done

conda deactivate

done
