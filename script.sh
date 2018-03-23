!/bin/sh

login="$1"
password="$2"
url="$3"


wget --user=$login --password=$password $url


