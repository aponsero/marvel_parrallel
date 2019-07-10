export CWD=$PWD
# where programs are
export BIN_DIR="/rsgrps/bhurwitz/hurwitzlab/bin"
export VIR_DIR="/rsgrps/bhurwitz/alise/tools/MARVEL" #Marvel path
export METABAT="/rsgrps/bhurwitz/alise/tools/metabat" #Metabat path
# where the dataset to prepare is
export DIR=""
export SAMPLE_LIST=""
export OUT="" #Output directory
####NOTES for naming conventions :
# Contigs should be as follow ${SAMPLE}_contigs.fa
# Bam files should be named as follow ${SAMPLE}_contigs.bam

#place to store the scripts
export SCRIPT_DIR="$PWD/scripts"
# User informations
export QUEUE="standard"
export GROUP=""
export MAIL_USER=""
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
