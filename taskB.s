.text
.global taskB  

taskB:                 
    li     s0, 0       
loopB:
    addi   s0, s0, 1   
    li     t0, 30011   
    blt    s0, t0, loopB 
    li     a0, 'B'     
    li     a7, 11
    ecall 
    b      taskB       