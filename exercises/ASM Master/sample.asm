.LC0:
        .string "Enter first number: "
.LC1:
        .string "%d"
.LC2:
        .string "Enter second number: "
.LC3:
        .string "\nfirstNumber = %d\n"
.LC4:
        .string "secondNumber = %d"
main:
        lea     ecx, [esp+4]
        and     esp, -16
        push    DWORD PTR [ecx-4]
        push    ebp
        mov     ebp, esp
        push    ecx
        sub     esp, 20
        ----
        sub     esp, 12
        push    OFFSET FLAT:.LC0
        call    printf
        add     esp, 16
        ----
        sub     esp, 8
        lea     eax, [ebp-16]
        push    eax
        push    OFFSET FLAT:.LC1
        call    __isoc99_scanf
        add     esp, 16
        ----
        sub     esp, 12
        push    OFFSET FLAT:.LC2
        call    printf
        add     esp, 16
        ----
        sub     esp, 8
        lea     eax, [ebp-20]
        push    eax
        push    OFFSET FLAT:.LC1
        call    __isoc99_scanf
        add     esp, 16
        ----
        mov     eax, DWORD PTR [ebp-16]
        mov     DWORD PTR [ebp-12], eax
        ----
        mov     eax, DWORD PTR [ebp-20]
        mov     DWORD PTR [ebp-16], eax
        ----
        mov     eax, DWORD PTR [ebp-12]
        mov     DWORD PTR [ebp-20], eax
        mov     eax, DWORD PTR [ebp-16]
        sub     esp, 8
        push    eax
        push    OFFSET FLAT:.LC3
        call    printf
        add     esp, 16
        ----
        mov     eax, DWORD PTR [ebp-20]
        sub     esp, 8
        push    eax
        push    OFFSET FLAT:.LC4
        call    printf
        add     esp, 16
        ----
        mov     eax, 0
        ----
        mov     ecx, DWORD PTR [ebp-4]
        leave
        lea     esp, [ecx-4]
        ret
