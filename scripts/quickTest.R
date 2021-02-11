## Convert to GDS
library(SeqArray)
vcf <- "VCF/ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz"
gds <- "GDS/ALL.chr22.gds"
seqVCF2GDS(vcf, gds)