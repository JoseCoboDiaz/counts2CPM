data<-read.table("gene_count_matrix.txt", sep="\t", header = TRUE, row.names=1)
seqs<-read.table("number_seqs.txt", sep="\t", header = TRUE, row.names=1)

data<-data[,order(colnames(data))]
seqs<-seqs[order(rownames(seqs)),]

data_cpm<-apply(data, 1, function(x)x*1000000/seqs$reads)	

write.table(t(data_cpm), "gene_CPM_matrix.txt", quote=FALSE, sep="\t")

