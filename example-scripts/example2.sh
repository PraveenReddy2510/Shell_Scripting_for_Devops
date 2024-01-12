#!/bin/bash

myname="Praveen"
profession="DevOps Engineer"

echo "Hello, My name is $myname."
echo "And I'm a $profession."

echo 'Hello, My name is $myname.' 
# here the string within single quotes will be printed as it is because variable name is not mentioned between double quotes
echo 'And I'm a $profession.'
# here thi throw a error
