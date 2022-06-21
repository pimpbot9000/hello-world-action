A=tuomas
B=""
C=valimaki
my_arr=(A B C)

for i in "${my_arr[@]}"
do
    [ -z "${!i}" ] && echo "empty" || { echo "not empty"; }
    echo ${!i}
done

echo ${!my_arr[0]}