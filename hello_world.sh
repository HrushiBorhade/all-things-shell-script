#! /bin/bash

echo "Hello, World!"


<< comment
Create and  Execute a basic shell script
```
➜  all-things-shell-script git:(main) ✗ vim hello_world.sh
```

[hello_world Script](/hello_world.sh)
```
#! /bin/bash
echo "Hello, World!"
```

change file permission in order to execute
```
➜  all-things-shell-script git:(main) ✗ ls -l
total 16
-rw-r--r--@ 1 hrushiborhade  staff  15 Mar 15 12:56 README.md
-rw-r--r--@ 1 hrushiborhade  staff  45 Mar 15 12:58 hello_world.sh

➜  all-things-shell-script git:(main) ✗ chmod 744 hello_world.sh

➜  all-things-shell-script git:(main) ✗ ls -l
total 16
-rw-r--r--@ 1 hrushiborhade  staff  15 Mar 15 12:56 README.md
-rwxr--r--@ 1 hrushiborhade  staff  45 Mar 15 12:58 hello_world.sh
```
```
➜  all-things-shell-script git:(main) ✗ ./hello_world.sh
Hey there! What's your name?
Enter your name: hrushi
Hello, hrushi! Nice to meet you.
```
alternate to execute
```
➜  all-things-shell-script git:(main) ✗ bash hello_world.sh
```
comment
