library(ggplot2)
library(gggenes)
# read in data


data <-read.csv("C:/Users/99hee/OneDrive/Desktop/Lab/PA_pangenome/LES_regions.csv", fileEncoding = "UTF-8")

# set index as locus tag
rownames(data) <- data$locus_tag
data$locus_tag <- NULL


genes_of_interest <- data

# plot
ggplot(genes_of_interest, aes(xmin = start, xmax = stop, y = accession, fill = gene_name, label = gene_name)) +
  geom_gene_arrow(arrowhead_height = unit(3, "mm"), arrowhead_width = unit(1, "mm")) +
  geom_gene_label(align = "left") +
  facet_wrap(~ accession, scales = "free", ncol = 1) +
  scale_fill_brewer(palette = "Set3")



library(ggplot2)
library(gggenes)

df_plot <- read.csv("C:/Users/99hee/OneDrive/Desktop/Lab/PA_pangenome/LES_regions.csv", fileEncoding = "UTF-8")

library(ggplot2)
library(gggenes)

ggplot(df_plot,
       aes(xmin = xmin,
           xmax = xmax,
           y = molecule,
           forward = strand)) +

  geom_gene_arrow() +

  facet_wrap(~ molecule, scales = "free_x", ncol = 1) +

  theme_genes()
 