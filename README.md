# lara-zostera

My goal is to create a pipeline for conducting genotype-environment association (GEA) analyses using RAD-seq data.

My workflow will consist of the following:

Processing the RADseq data:

1) Data preparation and quality control: Remove low-quality sequences using process_radtags (STACKS), demultiplex samples based on barcodes, and evaluate the integrity of the data before downstream applications.
2) Alignment to a reference *Zostera marina* genome (there is one for the West Coast of the United States!) and identify SNPs.
3) Call genotypes and filter data based on coverage and minor allele frequency.

Identifying genome-environment associations:

1) Simulating environmental data (likely just a few temperature metrics) with which to practice with.
2) Use LFMM (latent factor mixed modeling) and RDA (redundancy analysis) to implement GEA analysis.
3) Test for associations between allele frequencies and environmental predictors (temperature metrics)

If I've come this far (fingers crossed), I will also explore validation techniques and interpret the functional relevance of candidate SNPs!! Woohoo!!


