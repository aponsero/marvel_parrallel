# marvel_parrallel
Pipeline for parrallel MARVEL on HPC (PBS scheduler) 

## Requirements

### Marvel
This pipeline requires to download and install [Marvel](https://github.com/LaboratorioBioinformatica/MARVEL) on the HPC. 
### Metabat
This pipeline requires to download and install [Metabat](https://bitbucket.org/berkeleylab/metabat/src/master/) on the HPC.

## Quick start

### Edit scripts/config.sh file

please modify the
  - VIR_DIR= Path to Marvel bin directory
  - METABAT= Path to Metabat bin directory
  - DIR= Path to directory that contain the fasta file and the bam files
  - SAMPLE_LIST= Path to the list of samples
  - OUT= Path to output directory
  
####NOTES for naming conventions :
Contigs should be as follow ${SAMPLE}_contigs_fixed.fa
Bam files should be named as follow ${SAMPLE}_contigs.bam

You can also modify

  - BIN = change for your own bin directory.
  - MAIL_TYPE = change the mail type option. By default set to "bea".
  - QUEUE = change the submission queue. By default set to "standard".
  
  ### Run pipeline
  
  Run 
  ```bash
  ./submit.sh
  ```
  This command will place one job in queue.
  
