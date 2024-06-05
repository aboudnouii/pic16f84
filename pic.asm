#include "p16f84.inc"	
__CONFIG_CP_OFF_PWRTE_OFF_WDT_OFF_OSC_XT ;                     

   Comp    equ  0C  ;              
   ORG  0x05     ;                            
      BSF STATUS,RP0   ;                              
      MOVLW B'11111110'    ;                         
      MOVWF TRISB  ;                               
      BCF STATUS,RP0  ;                                    
      BCF  PORTB,0    ;                                                                          
star
      BSF PORTB,0 ;                 
      CALL tempo ;             
      BCF PORTB,0 ;            
      CALL tempo   ;            
      GOTO star  ;      
tempo
      MOVLW 0xFF ;
      MOVWF 0C  ;                  
b1
      DECFSZ 0C   ;     
      GOTO b1 ;   
      RETURN  ;  
      END 
