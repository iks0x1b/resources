#bin/bash
lesspath=$(echo "$2" | sed 's/\///g')
if [ "$1" == "e" ]; then
	tar -cvzf - "$2" | gpg -c > "$lesspath".tar.gz.gpg
elif [ "$1" == "d" ]; then
	gpg -d "$2" | tar -xvzf -
else
  echo "usage is gpg_tar.sh [e|d] [folder|tarball.tar.gz.gpg]"
fi
