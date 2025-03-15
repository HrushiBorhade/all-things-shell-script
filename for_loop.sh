<< comment
    1 - is the file name
    2 - start number
    3 - end number
comment

echo "Creating folders from $1_$2 to $1_$3"
for (( i=$2; i<=$3; i++ ))
do
    mkdir "$1_$i"
done

echo "Folders created successfully!"

<< example
➜  all-things-shell-script git:(main) ✗ bash for_loop.sh day 00 05
Creating folders from day_00 to day_05
Folders created successfully!
➜  all-things-shell-script git:(main) ✗ ls
README.md       day_2           hello_world.sh
arguments.sh    day_3           shell-gif.gif
conditionals.sh day_4           variable.sh
day_0           day_5
day_1           for_loop.sh
example

