## Convert to GDS
### 1000Genomes
library(SeqArray)
vcf <- "VCF/ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz"
gds <- "GDS/ALL.chr22.gds"
seqVCF2GDS(vcf, gds)

### gnomAD
library(SeqArray)
vcf <- "gnomad.genomes.v3.1.hgdp_1kg_subset.chr21.vcf.bgz"
gds <- "gnomad.genomes.hgdp_1kg.chr22.gds"
seqVCF2GDS(vcf, gds)

## Load chr22 from GDS using new implementation
library(recombClust)
library(GenomicRanges)
library(SeqArray)

load("VCF/PopulationClassification.RData")

gds <- "GDS/ALL.chr22.gds"
range <- GRanges("22:12085554-51304566")

samples <- subset(samp_pop, superpop == "EUR")$name
snpsData <- getData(gds, range, samples, 0.1)
res <- computeRecombProbabilities_inFile(gds, range, samples)

# 37363993
# 49251154
# 35814679