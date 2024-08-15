# Publication_Sigma54

This repository contains the data and scripts associated with the publication: Khan EA, Ruckert-Reed C, Dahiya GS, Tietze L, Fages-Lartaud M, Busche T, Kalinowski J, Shingler V, Lale R. High-resolution mapping of Sigma Factor DNA Binding Sequences using Artificial Promoters, RNA aptamers, and Deep Sequencing.

- DNA_Sequencing folder: This folder includes the sequencing data of the ARES plasmid DNA library, performed using the Illumina MiSeq platform and the Oxford Nanopore Technologies GridION and PromethION platforms. We used these NGS platforms to identify DNA template sequences within the library. Illumina MiSeq sequencing yielded 15.8 million paired-end reads, with 13.8 million high-quality reads retained after filtering and dereplication. Additionally, ONT sequencing provided 11.4 million reads, resulting in 6.4 million unique reads after dereplication across all libraries. Clustering these sequences at a 90% similarity threshold using VSEARCH identified 1.54 million unique ARES sequences, 587,082 of which were supported by at least three independent reads, ensuring high confidence in the results.

- Plasmid_maps folder: This folder contains the plasmid maps: a map of the cloned Mango aptamer in the pSEVA2311 backbone, a map of the cloned ARES (N200) in the pHH100-dBroccoli backbone, a map of ARES with adapter, and a map of the cloned dBroccoli aptamer in the pHH100 backbone.

- RNA_Sequencing folder: This folder includes sequencing data from in vitro transcribed RNA using Oxford Nanopore Technologies' PromethION R10.4.1 flow cell. The 'mapped' column represents the number of RNA reads mapped to the sequenced ARES library, while the 'position' column indicates the transcription start site (TSS) positions on the sequenced ARES library, corresponding to the 'sequence' column.

- ARES_New_IDs folder: The IDs used in the DNA and RNA sequence files differ from those used in the SRA submission file. To assist researchers, we have included both the SRA and raw data IDs in these files for easy reference.

- Data_Analysis_Script folder: This folder contains a Python script for identifying promoter motifs and a Perl script for marking the TSS.

- Sigma54_raw_data: This folder includes the proportions of different nucleotides (A, C, G, T) at each position within the --24 and --12 consensus sequences of sigma-54 promoters (ARES).

- Supplementary folder: This folder contains figures and tables as follows:
  - Figures:
    - Fig. S1: Importance of ΔA2-DmpR for P. putida σ54-dependent IVT reactions.
    - Fig. S2: Distribution of a single motif within a 97 bp region upstream of the TSS in the highest expressing ARES subset.
    - Fig. S3: Distribution of a single motif within the 40 bp region upstream of the TSS in the highest expressing ARES subset.
  - Tables:
    - Table S1: Primer sequences.
    - Table S2: Sequences of the 18 shortlisted ARES for IVT validation.
    - Table S3: Significant annotations of IVT-generated σ54-RNA polymerase binding motifs in the upstream regions of genes.

Benchling links to the plasmids used in this study are also provided.
