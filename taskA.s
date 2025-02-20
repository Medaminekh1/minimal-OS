.text
.global taskA  

taskA:               
    li     s0, 0       
loopA:
    addi   s0, s0, 1   
    li     t0, 10007  
    blt    s0, t0, loopA 
    li     a0, 'A'     
    li     a7, 11
    ecall 
    #la     t1, taskA       
    #addi   t1, t1, 2       # add 2 to create a misaligned address
    #jalr   ra, 0(t1)       # jumb to this address
    b       taskA      
