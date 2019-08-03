# include the lib of colorme
. colorme.sh
# or source ./colorme.sh

# testcase
ret=`colorme 郭璞 highlight black`
echo -e $ret
ret=`customize tiger blink red black`
echo -e $ret