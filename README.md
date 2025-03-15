# Shell Script

## Create and  Execute a basic shell script


```
➜  shell-scripting git:(main) ✗ vim greetings.sh
```

[greetings.sh](/greetings.sh)
```
#! /bin/bash
echo "Hey there! What's your name?"
read -p "Enter your name: " name
echo "Hello, $name! Nice to meet you."
```

change file permission in order to execute
```
➜  shell-scripting git:(main) ✗ ls -l
total 16
-rw-r--r--@ 1 hrushiborhade  staff  15 Mar 15 12:56 README.md
-rw-r--r--@ 1 hrushiborhade  staff  45 Mar 15 12:58 greetings.sh
➜  shell-scripting git:(main) ✗ chmod greetings.sh 744
chmod: Invalid file mode: greetings.sh
➜  shell-scripting git:(main) ✗ chmod 744 greetings.sh
➜  shell-scripting git:(main) ✗ ls -l
total 16
-rw-r--r--@ 1 hrushiborhade  staff  15 Mar 15 12:56 README.md
-rwxr--r--@ 1 hrushiborhade  staff  45 Mar 15 12:58 greetings.sh
```

```
➜  shell-scripting git:(main) ✗ ./greetings.sh
Hey there! What's your name?
Enter your name: hrushi
Hello, hrushi! Nice to meet you.
```

