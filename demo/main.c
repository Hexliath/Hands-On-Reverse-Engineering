/***********************************************************************
* FILENAME :        main.c          CREATION DATE :    11 01 2021
*
* DESCRIPTION :
*       This program creates a custom hash of a user defined string.
*       It is used for reverse engineering demonstration purpose.
*
* AUTHOR :    Alexandre Thiroux (athiroux@ssl247.fr)      
*
**************************************************************************/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>



void secret_function(){
    printf("This function is useless. But you can only find it using static analysis.");
}

char * hash(char * input){

    char * output ;
    short xor_key = 0x3D;

    output = malloc(sizeof(char) * (strlen(input)));
    strcpy(output,input);


    for(int i = 0; i <  strlen(output); i++){
        if(i%2){
        output[i] = output[i]^xor_key;
        }
        else{
            output[i] = (output[i] - 2);
        }
    }

    strcat(output,"==");
    return output;

}





int main(int argc, char **argv){

    char input[256];


    printf("Welcom user. Please type a string:\n> ");
    fgets(input, sizeof(input), stdin ) ; 
    input[strlen(input)-1]='\0';

    printf("\nInput: %s\n",input);
    printf("Output: %s\n\n", hash(input));


    return 0;
}

