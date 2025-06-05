# lara-zostera

This repo contains code and data that supports a workflow for conducting genotype-environment association (GEA) analyses using RAD-seq data of *Zostera marina* genomes.

## Project justification and description

As a nearshore foundation species, eelgrass meadows (*Zostera marina*) provide a plethora of ecosystem services. The accelerating pace of climate change, particularly warming and heat wave events (Oliver et al., 2018), increases thermal stress in marine organisms (Smale et al., 2019), and has resulted in dramatic eelgrass declines in the Pacific Northwest United States (Magel et al., 2023) and globally. **The capacity to adapt to such change is dependent on standing genetic variation that confers fitness benefits related to that change.**

**Our lab has described extensive population differentiation in eelgrass across Washington State** (Briones Ortiz et al., in prep). **This structure generally conforms to the oceanographic regions in Washington** (Khangaonkar et al., 2019), **which experience differences in thermal regimes** that may contribute to structure through temperature related adaptive processes. Metrics describing patterns of warming, such as seasonal heat accumulation, daily maximums and daily variability are associated with trait variation in eelgrass within meadows (Wong & Dowd, 2025; Breitkreutz et al., in prep) and differences in productivity and resilience between meadows (Krumshansl et al., 2021).

**ANeMoNe sites across Washington state provide a time series of water temperature from which thermal regimes, particularly patterns of warming, can be characterized.** Genomes from individuals collected across ANeMoNe sites have been sequenced. These data together can be used to survey statistical associations between genotypes and temperature metrics *(genotype-environment associations, or GEAs)* in an effort to identify loci associated with thermal tolerance.

### Preliminary goal

l aim to create a workflow for conducting genotype-environment association (GEA) analyses using RAD-seq data, beginning with demultiplexed raw reads. This workflow is *in progress*:

### Workflow

- 1.1 Alignment
- 1.2 Variant calling
- 1.3 Filtering
- 1.4 Clone correcting
- 1.5 Assessing population structure
- 2.1 Calculate temperature metrics
- 2.2 Redundancy analysis (GEA method)
- 2.3 Remaining steps

### Data overview

I am using demultiplexed RAD-seq data (quality control checks with **FastQC** conducted prior to obtaining data) of approximately 50 individual samples from each of 15 locations across Washington State. **Six locations were ANeMoNe sites**; however, I will work with all data until GEAs are determined.

See the progress here: https://rpubs.com/larabreit/finalproj_546

### References

Bernatchez, L., Ferchaud, A.-L., Berger, C. S., Venney, C. J., & Xuereb, A. (2024). Genomics for monitoring and understanding species responses to global climate change. Nature Reviews Genetics, 25(3), 165–183. https://doi.org/10.1038/s41576-023-00657-y

Forester, B. R., Cicchino, A. S., Shah, A. A., Mudd, A. B., Anderson, E. C., Bredeson, J. V., Crawford, A. J., Dunham, J. B., Ghalambor, C. K., Landguth, E. L., Murray, B. W., Rokhsar, D., & Funk, W. C. (2025). Population Genomics Reveals Local Adaptation Related to Temperature Variation in Two Stream Frog Species: Implications for Vulnerability to Climate Warming. https://doi.org/10.1111/mec.17651

Khangaonkar, T., Nugraha, A., Xu, W., & Balaguru, K. (2019). Salish Sea Response to Global Climate Change, Sea Level Rise, and Future Nutrient Loads. Journal of Geophysical Research: Oceans, 124(6), 3876–3904. https://doi.org/10.1029/2018JC014670

Krumhansl, K. A., Dowd, M., & Wong, M. C. (2021). Multiple Metrics of Temperature, Light, and Water Motion Drive Gradients in Eelgrass Productivity and Resilience. Frontiers in Marine Science, 8. https://doi.org/10.3389/fmars.2021.597707

Magel, C. L., Hacker, S. D., Chan, F., & Helms, A. R. (2023). Eelgrass and Macroalgae Loss in an Oregon Estuary: Consequences for Ocean Acidification and Hypoxia. Ocean-Land-Atmosphere Research, 2, 0023. https://doi.org/10.34133/olar.0023

Oliver, E. C. J., Donat, M. G., Burrows, M. T., Moore, P. J., Smale, D. A., Alexander, L. V., Benthuysen, J. A., Feng, M., Sen Gupta, A., Hobday, A. J., Holbrook, N. J., Perkins-Kirkpatrick, S. E., Scannell, H. A., Straub, S. C., & Wernberg, T. (2018). Longer and more frequent marine heatwaves over the past century. Nature Communications, 9(1), Article 1. https://doi.org/10.1038/s41467-018-03732-9

Smale, D. A., Wernberg, T., Oliver, E. C. J., Thomsen, M., Harvey, B. P., Straub, S. C., Burrows, M. T., Alexander, L. V., Benthuysen, J. A., Donat, M. G., Feng, M., Hobday, A. J., Holbrook, N. J., Perkins-Kirkpatrick, S. E., Scannell, H. A., Sen Gupta, A., Payne, B. L., & Moore, P. J. (2019). Marine heatwaves threaten global biodiversity and the provision of ecosystem services. Nature Climate Change, 9(4), Article 4. https://doi.org/10.1038/s41558-019-0412-1

Wong, M. C., & Dowd, M. (2025). Eelgrass (*Zostera marina*) Trait Variation Across Varying Temperature-Light Regimes. Estuaries and Coasts, 48(1), 13. https://doi.org/10.1007/s12237-024-01439-3
