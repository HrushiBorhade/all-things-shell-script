
number=1
while [ $number -le 10 ]
do
    echo "Number: $number"
    number=$((number + 1))
done

<< example
➜  all-things-shell-script git:(main) ✗ bash while_loop.sh
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5
Number: 6
Number: 7
Number: 8
Number: 9
Number: 10
example