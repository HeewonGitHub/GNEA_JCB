### Infile dataset
# Edges list of gene network for all p genes
NW_p.genes<-read.table("NW_p.genes.csv",sep=",")
# Edges list of target (pathway) gene network
NW_pathway<-read.table("NW_pathway.csv",sep=",")
# Edges list of query gene network
NW_query<-read.table("NW_query.csv",sep=",")


# Hypergeometric test of Enrichment
N<-nrow(NW_p.genes)
Ip<-nrow(NW_pathway)
Is<-nrow(NW_query)
X<-length(intersect(rownames(NW_pathway),rownames(NW_query)))
# Compute p.value
1-phyper(q = X, m = Ip, n = N-Ip, k = Is)

