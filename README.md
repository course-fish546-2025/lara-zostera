# lara-zostera

My goal is to create a pipeline for conducting genotype-environment association (GEA) analyses using RAD-seq data.

My workflow will consist of the following:

Processing the RADseq data:

1) ALIGNING: Practice data provided were already demultiplexed. I will align sequences to a reference *Zostera marina* genome using the BWA MEM function in the Burrow-Wheeler Aligner software (Li and Durbin, 2009).
2) GENOTYPING: I will genotype polymorphic loci using the ref_map function in STACKS.
3) FILTERING: SNPs will be filtered using SNPFILTR in R, and I will retain SNPs with a sequence depth of 10x and allelic balance between 0.2 and 0.8. Further, only one SNP per RAD-tag will be retained (that with highest minor allele frequency). SNPs will be removed if minor allele frequencies are less than 0.05 OR significantly deviate from HWE.

Identifying genome-environment associations:

1) Simulating environmental data (likely just a few temperature metrics) with which to practice with.
2) Use LFMM (latent factor mixed modeling) and RDA (redundancy analysis) to implement GEA analysis.
3) Test for associations between allele frequencies and environmental predictors (temperature metrics)

If I've come this far (fingers crossed), I will also explore validation techniques and interpret the functional relevance of candidate SNPs!! Woohoo!!

References
Li H. and Durbin R. (2009) Fast and accurate short read alignment with Burrows-Wheeler transform. Bioinformatics, 25, 1754-1760. [PMID: 19451168]. (if you use the BWA-backtrack algorithm)


