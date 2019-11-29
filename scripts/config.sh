export CWD=$PWD
# where programs are
export BIN_DIR="/rsgrps/bhurwitz/hurwitzlab/bin"
export VIR_DIR="/rsgrps/bhurwitz/alise/tools/MARVEL" #Marvel path
export METABAT="/rsgrps/bhurwitz/alise/tools/metabat" #Metabat path
# where the dataset to prepare is
export DIR="/rsgrps/bhurwitz/alise/my_data/Nostoc_project/Lichen_metagenomes/experiments/3-mock_community/mock2/marvel" #should contain the fasta file and the bam files
export SAMPLE_LIST="/rsgrps/bhurwitz/alise/my_data/Nostoc_project/Lichen_metagenomes/experiments/3-mock_community/mock2/marvel/sample.list"
export OUT="/rsgrps/bhurwitz/alise/my_data/Nostoc_project/Lichen_metagenomes/experiments/3-mock_community/mock2/marvel" #Output directory
####NOTES for naming conventions :
# Contigs should be as follow ${SAMPLE}_contigs_fixed.fa
# Bam files should be named as follow ${SAMPLE}_contigs.bam

#place to store the scripts
export SCRIPT_DIR="$PWD/scripts"
# User informations
export QUEUE="standard"
export GROUP="bhurwitz"
export MAIL_USER="aponsero@email.arizona.edu"
export MAIL_TYPE="bea"

#
# --------------------------------------------------
function init_dir {
    for dir in $*; do
        if [ -d "$dir" ]; then
            rm -rf $dir/*
        else
            mkdir -p "$dir"
        fi
    done
}

# --------------------------------------------------
function lc() {
    wc -l $1 | cut -d ' ' -f 1
}
