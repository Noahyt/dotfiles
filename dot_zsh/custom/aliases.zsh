
### ALIASES
alias cm="chezmoi" 

# Go to commands.
alias cdd="cd ~/Documents"

# Change `mv` to default to check in before overwrite.
alias mv="mv -i"

### SHORTCUTS
export HRC_DATA="/n/holyscratch01/mahadevan_lab/ntoyonaga"
export EDITOR="vim"


# FOR `zathura`
export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

# FUNCTIONS
hrc_sync () {
	SOURCE_FOLDER=${1}
	DESTINATION_FOLDER=${2}
	echo "sync ${SOURCE_FOLDER} with ${DESTINATION_FOLDER}"
	rsync -avP --update ntoyonaga@login.rc.fas.harvard.edu:/n/holyscratch01/mahadevan_lab/ntoyonaga/${SOURCE_FOLDER} ${DESTINATION_FOLDER}
}

# DOCUMENTATION.
helpme () {
	cat<<EOF
	### DOTFILES ###
	To show all dotfiles in a directory:
		 ls -A

	To edit dotfiles: use \`chezmoi\`.
		edit: $ cm edit \$FILE
		apply $ cm apply 
	
	Aliases are located at:
		~/.zsh/custom/aliases.zsh

	### HARVARD ###
	hrc_sync
		to sync with cluster
		usage: $ hrc_sync \$SOURCE_FOLDER \$DESTINATION_FOLDER
		
		note that \$SOURCE_FOLDER should be a directory in \$mahadevan_lab/ntoyonaga (i.e. scratch).
EOF
}
