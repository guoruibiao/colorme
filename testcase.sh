# include the lib of colorme
. colorme.sh
# or source ./colorme.sh

# testcase
ret=`colorme 郭璞 highlight red white`
echo -e $ret
ret=`customize tiger blink highlight red black`
echo -e $ret
