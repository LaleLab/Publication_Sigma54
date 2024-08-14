# Publication_Sigma54
The data and scripts that accompany the publication Khan EA, Ruckert-Reed C, Dahiya GS, Tietze L, Fages-Lartaud M, Busche T, Kalinowski J, Shingler V, Lale R. High-resolution mapping of Sigma Factor DNA Binding Sequences using Artificial Promoters, RNA aptamers and Deep Sequencing.

DNA_Sequencing folder, Splitting the DNA-sequenced ARES library into multiple files.

The Plasmid_maps folder contains the following: a map of the cloned Mango aptamer in the pSEVA2311 backbone, a map of the cloned ARES (N200) in the pHH100-dBroccoli backbone, a map of ARES with adapter, and a map of the cloned dBroccoli aptamer in the pHH100 backbone.

RNA_Sequencing folder, Sequencing of in vitro transcribed RNA using Oxford Nanopore Technologies' PromethION R10.4.1 flow cell. The 'mapped' column represents the number of RNA reads mapped to the sequenced ARES library. The 'position' column indicates the transcription start site (TSS) positions on the sequenced ARES library, corresponding to the 'sequence' column..

ARES_New_IDs folder, The IDs used in the DNA and RNA sequence files differ from those used in the SRA submission file. To assist researchers, I have included both the SRA and raw data IDs in these files for easy reference.

Data_Analysis_Script folder, • Python script for the finding of promoter motifs • Perl script for marking the TSS

The supplementary folder contains figures illustrating the following: the importance of ΔA2-DmpR for P. putida σ54-dependent IVT reactions (Fig. S1); the distribution of a single motif within a 97 bp region upstream of the TSS in the highest expressing ARES subset (Fig. S2); and the distribution of a single motif within the 40 bp region upstream of the TSS in the highest expressing ARES subset (Fig. S3). Additionally, the folder includes tables detailing primer sequences (Table S1), sequences of the 18 shortlisted ARES for IVT validation (Table S2), and significant annotations of IVT-generated σ54-RNA polymerase binding motifs in the upstream regions of genes (Table S3). Benchling links to the plasmids used in this study are also provided.
