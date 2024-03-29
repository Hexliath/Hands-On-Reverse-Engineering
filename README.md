# Introduction: Reverse engineering

Hey u all,  
You will find in this repository some documentation along with exercices.   
You don't need to do it in order.  

Do not hesitate to ask me your questions.  

## Tools
- Ghidra (https://www.ghidra-sre.org/)
- GDB
- Strace
- Ltrace

## Report guidelines

- Describe and document each exercices. Explain how you have proceeded.
- Put this work into the Part 1 of your report. Part 2 will come next week.


## Exercice 1: ASM master

You have an ASM code.
The goal is to explain its working line by line.

Can you translate it to C code ? (don’t include headers and main function)  

### Report content
- Copy the ASM code and comment each instruction type at least once. Write a global comment for each instruction block.
```asm
; Put a string at the top of the stack
add     esp, 16 ; add 16 to the stack pointer
sub     esp, 12 ; substract 12 to the stack pointer
push    OFFSET FLAT:.LC2 ; push the address LC2 at the top of the stack
```
- Translate the code in  Pseudo-C 



## Exercice 2: Dynamite Reverse

Today the 15th of january 1866. You’re a texas adventurer. (okay, imagine plz)
Your worst ennemy has created a C-software (again, imagine) which is controlling the burning of a dynamite stick.  
Figure out how to disarm this. 

Use the same methodology as seen during the classe.  

```bash
gcc -m32 -o dynamite.exe source.c  
strip dynamite.exe
```

### Report content 
- What is the secret PIN-Code ?
- Screenshot the Ghidra decompiled (and analysed) functions.
- Using dynamic analysis can you find a quicker way to obtain the code ?



## Exercice 3: Malware

Patrick from compta has discovered virus on his computer. As an incident response handler, you’ve made some forensics on his computer, and discovered a strange file.
You decided to do some RE to analyse its behaviour. For that purpose you’ve set up a secure environment to execute the file.  

**Do not worry for your computer, the file is harmless**    


```bash
gcc -m32 -o malware.exe source.c  
strip malware.exe
```

### Report content 
- Trace the software syscalls.
- Which one is potentially dangereous ? Why ?
- Is there any way to prevent the virus damages ? Describe how.
