# Functions

eman() {
  man "$1" | col -b | vim -
}

newldir() {

  if [ -z $1 ]
  then
    ldirpath=`pwd`
  else
    ldirpath=$*
  fi
  # v4.0 ( 72)
	ls -lphS $ldirpath | awk '{$7=$5;$1=$2=$3=$4=$5=$6="";$8="\t";print substr($0,7)}'

	# v3.0 ( 75)
	# ls -lphS | awk '{$1=$2=$3=$4=$6="";$7=$5;$5="";$8="\t";print substr($0,7)}'

	# v2.0 ( 87) 
	# ls -lphS | awk '{$1="";$2="";$3="";$4="";$6="";$7=$5;$5="";$8="\t";print substr($0,7)}'

	# v1.0 (119) 
	# ls -lphS | awk '{print $5,"\t",$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$30}'

  #  87 - 72 = 15 characters smaller than v2
  # 119 - 72 = 47 characters smaller than v1

}

ldir() {
  if [ -z $1 ]
  then
    ldirpath=`pwd`
  else
    ldirpath=$*
  fi
	ls -lphS $ldirpath | awk '{print $5,"\t",$9,$10,$11,$12,$13,$14,$15,$16,$17,$18,$19,$20,$21,$22,$23,$24,$25,$26,$27,$28,$29,$30}'
}

old_list() {
	case $1 in

		'') ls -1 ~/reminders;;
		-e) vim ~/reminders/$2;;
		*) clear; remind ~/reminders/$1;;

	esac
}

myips () {
  echo
  for a in $(ifconfig -l)
  do
    ips=$(ifconfig "$a" | egrep -o '[0-9]{1,3}(\.[0-9]{1,3}){3}')
    if [[ "${#ips}" -gt 0 ]]
    then
      echo "$a"
      echo "$ips" | sed 's/^/  /'
      echo
    fi
  done

  echo
  echo "Remote IP:"
  echo "----------"
  whatismyip
  echo
}

backupiphone-now () {
  ls -al
  bkupdir=iPhone.`date +"%Y.%m%d-%H:%M:%S"`
  echo
  echo "$bkupdir"
  mkdir "$bkupdir"
  echo
  echo "mv 2010.0603-03:44:39 to iPhone...2010-02-13-18:09pm"
  rsync -avz --exclude "/private/var" --delete --backup --backup-dir="$bkupdir" iphone:/ iPhone/ 2>&1
}

backupiphone () {
  ls -al
  bkupdir=iPhone.`date +"%Y.%m%d-%H:%M:%S"`
  echo
  echo "$bkupdir"
  mkdir "$bkupdir"
  echo
  echo "mv 2010.0603-03:44:39 to iPhone...2010-02-13-18:09pm"
  rsync -avzn --exclude "/private/var" --delete --backup --backup-dir="$bkupdir" iphone:/ iPhone/ 2>&1
}

who2 () {
  who -ma
  echo
  who -ma 2>&1 | sed 's/	/    /g;s/./-/g'
  echo
  who -a
}

export MYBASHHISTORY='/var/log/bash_history.josh.CreatedOn.2010-0713.00.log'

