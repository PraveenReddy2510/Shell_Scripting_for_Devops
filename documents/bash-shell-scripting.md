# BASH SHELL SCRIPTING
### ➤ to check which shell available on your terminal that you are using.
    echo $SHELL
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/7d79c11a-f6d3-4bd4-87d6-2470b34a5137)
###### 👉 Note: so as shown above its bash shell, so we are good to go with bash shell scripting...
### ➤ to run/execute the script file
###### 📒 Note: to run the execute command as below the file should have the persmission a executable file (checkout the ```chmod``` to change the permissions)
    ./example1.sh
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/b6dfb7bf-d48e-47cb-92de-6d55e3771b24)
###### 👉 Note: so as shown above its the .sh file is executing the ```ls -l``` command which is the content of the .sh file

#### Important points to note;
###### ➤ The file extensions should always be a .sh, it can anything like apple, script.txt, README.md etc...
###### ➤ The file should have the executable permission like ```-rwxrwxr-x```.
###### ➤ Since the file extension can be anything, to alert the interpretor that this is a bash script file we use ```#!/bin/bash``` (called as ```shebang```) as the first line of the scripting file
###### ➤ So it's mandatorily advised to start the first line of script with ```#!/bin/bash```

#### Breaking down the ```#!/bin/bash``` (```shebang```)
##### ```#!``` ➠ tells the shell what interpreter to use while executing the script. And this is applied only for the first line of the file as in other line the # is considered as ```comment```
##### ```/bin/bash```Tells that the type of shell will be used to run the script. In this case, the script should be interpreted and executed by "bash" shell, which is same as when we run ```echo $SHELL``` command.

# Example-1
## To print the ```Hello World!``` by using BASH script.
[example1.sh - Script](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/blob/main/example-scripts/example1.sh)
#####    
    #!/bin/bash

    echo "Hello World!"
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/e37908ce-d9ab-49db-a4f6-0db73cefdb43)

# Example-
## To store variable and use them in the ```echo``` command.
[example2.sh - Script](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/blob/main/example-scripts/example2.sh)
#####    
    #!/bin/bash

    myname="Praveen"
    profession="DevOps Engineer"

    echo "Hello, My name is $myname."
    echo "And I'm a $profession."

    echo 'Hello, My name is $myname.'
    echo 'And I'm a $profession.'
###### 📒 Note: 
###### ➤ Here ```myname``` and ```profession``` are variables (refer lines 3 & 4 from the above script)
###### ➤ To print the variable in a ```echo``` command ```$``` sign should be used with a variable name within a double quotes. (refer the lines 6 & 7 from the above script)
###### ➤ If we use ```$``` sign with variable within a single quotes then the variable value will not be printed.(refer the line 9 from the above script)
###### ➤ If the ```echo``` command has the text to be printed with a single quote then its better to use the whole text with in the double quotes, (refer the line 7 from the above script)
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/49e86771-fa03-42e6-952d-16aad295d286)








