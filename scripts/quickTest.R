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
