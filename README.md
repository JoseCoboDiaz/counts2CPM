# counts2CPM
Script to transform a "gene count" matrix to "counts per million reads" matrix.

The inputs are a matrix of gene counts per sample (named "gene_counts_matrix.txt"), being samples represented by columns and genes by rows, together to the file "number_seqs.txt", which contains a first column with sample names and a second (named "reads") with reads number per sample. The output is the "counts per million reads" matrix.
