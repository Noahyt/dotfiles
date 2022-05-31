# ALIASES
alias cm="chezmoi" 

# SHORTCUTS
export HRC_DATA="/n/holyscratch01/mahadevan_lab/ntoyonaga"
export EDITOR="vim"
export CIS_DATA="/Users/quinoah/Documents/data"

# FUNCTIONS
hrc_sync () {
	SOURCE_FOLDER=${1}
	DESTINATION_FOLDER=${2}
	echo "sync ${SOURCE_FOLDER} with ${DESTINATION_FOLDER}"
	rsync -avP --update ntoyonaga@login.rc.fas.harvard.edu:/n/holyscratch01/mahadevan_lab/ntoyonaga/${SOURCE_FOLDER} ${DESTINATION_FOLDER}
}

