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
[example1.sh](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/blob/main/example-scripts/example1.sh) - Script
#####    
    #!/bin/bash

    echo "Hello World!"
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/e37908ce-d9ab-49db-a4f6-0db73cefdb43)

# Example-2
## To store variable and use them in the ```echo``` command.
[example2.sh](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/blob/main/example-scripts/example2.sh) - Script
#####    
    #!/bin/bash
    
    myname="Praveen"
    profession="DevOps Engineer"
    
    echo "Hello, My name is $myname."
    echo "And I'm a $profession."
    
    echo 'Hello, My name is $myname.' 
    # here the string within single quotes will be printed as it is because variable name is not mentioned between double quotes.
    echo 'And I'm a $profession.'
    # here this throws a error, so to overcome this scenario use " echo 'And I\'m a $profession.'" to run successfully.
###### 📒 Note: 
###### ➤ Here ```myname``` and ```profession``` are variables (refer lines 3 & 4 from the above script)
###### ➤ To print the variable in a ```echo``` command ```$``` sign should be used with a variable name within a double quotes. (refer the lines 6 & 7 from the above script)
###### ➤ If we use ```$``` sign with variable within a single quotes then the variable value will not be printed.(refer the line 9 from the above script)
###### ➤ If the ```echo``` command has the text to be printed with a single quote then its better to use the whole text with in the double quotes, (refer the line 7 from the above script)
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/49e86771-fa03-42e6-952d-16aad295d286)
###### In the above picture the error is occurred because of single quotes issue.

# Example-3
## To store the output of any command in the linux (like ```ls```, ```ls -l```, ```pwd```, ```date```, ```history``` etc...)
[example3.sh](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/blob/main/example-scripts/example3.sh) - Script
#####    
    #!/bin/bash
    
    store=$(ls)
    echo $store
    
    store2=$(ls -l)
    echo $store2
    
    store3=$(pwd)
    echo $store3

![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/853454f6-2e5d-46cf-9636-f36b935545bc)

# Example-4
## To print the pre-defined/evironmental variables that are available in linux ubuntu (to checkout the list of environmental variables, use ```env``` command)
###### 👉 TIP: So as below mentioned the all pre-defined/evironmental variables will be in ```UPPER_CASE``` so its recommended to use ```LOWER_CASE``` for user defined variables that you create.
[example4.sh](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/blob/main/example-scripts/example4.sh) - Script
#####    
    #!/bin/bash
    
    # some of the pre-defined variable in the linux ubuntu 
    
    echo $USER
    echo $SHELL
    echo $PWD
    echo $LOGNAME
    echo $XDG_SESSION_TYPE
    echo $MOTD_SHOWN
    echo $HOME
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/268c4ddb-37b0-4ff1-a207-00cdeac07df7)

# Example-5
## To print the mathmatical operations
###### 👉 TIP: Since ```*``` has some usage in the linux, so multiplication cannot be performed directly
[example4.sh](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/blob/main/example-scripts/example4.sh) - Script
#####    
    #!/bin/bash

    mynum=300
    mynum1=10
    
    # to add two numbers
    expr 10 + 3
    # to substract two numbers
    expr 10 - 3
    # to perform divsion between two numbers
    expr 10 / 4
    # to multiply two numbers
    expr 3 \* 10
    # to add two numbers with variables
    expr $mynum + 10
    # to divide two numbers with variables
    expr $mynum / $mynum1
![image](https://github.com/PraveenReddy2510/Shell_Scripting_for_Devops/assets/127923130/fc593516-ed03-4bf1-9bac-974a272268dd)
