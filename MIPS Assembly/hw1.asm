.data 
input: .asciiz "Please enter filename with .txt: "
myFile: .space 256 
buffer: .space 256
zero: .asciiz "zero"
one: .asciiz "one"
two: .asciiz "two"
three: .asciiz "three"
four: .asciiz "four"
five: .asciiz "five"
six: .asciiz "six"
seven: .asciiz "seven"
eight: .asciiz "eight"
nine: .asciiz "nine"
#Upper case number
uzero: .asciiz "Zero"
uone: .asciiz "One"
utwo: .asciiz "Two"
uthree: .asciiz "Three"
ufour: .asciiz "Four"
ufive: .asciiz "Five"
usix: .asciiz "Six"
useven: .asciiz "Seven"
ueight: .asciiz "Eight"
unine: .asciiz "Nine"
.text

main:
#take filename from user
li $v0, 4
la $a0, input
syscall 

li $v0, 8
la $a0, myFile
li $a1, 50
syscall
 
# Remove new line from input file name
li $t0,0
li $t1,'\0'       
removeNewLine:
    lb $a1,myFile($t0)    
    addi $t0,$t0,1      
    bnez $a1,removeNewLine     
    beq $a1,$t0,exit    
    sub $t0,$t0,2     
    sb $t1, myFile($t0)    
exit:

# Open file for reading

li   $v0, 13          # system call for open file
la   $a0, myFile      # input file name
li   $a1, 0           # flag for reading
li   $a2, 0           # mode is ignored
syscall               # open a file 
move $s0, $v0         # save the file descriptor  

# reading from file just opened

li   $v0, 14        # system call for reading from file
move $a0, $s0       # file descriptor 
la   $a1, buffer    # address of buffer from which to read
li   $a2,  256      # hardcoded buffer length
syscall             # read from file

li	$t1, 0

TraverseText:
	la  $t0, buffer($t1)   #loading value
	lb  $a0, ($t0)
	# Check character is a digit
	slti $t0, $a0, 58    
	sgt $t3, $a0, 47    
	and  $t0, $t0, $t3
	
	addi $t1, $t1, 1     
	bnez $t0, convert 
	
	li   $v0, 11
	syscall
	bnez    $a0, TraverseText  #loop bitirme kontrolü

#Close file
li   $v0, 16      
move $a0, $s0      
syscall  
#Exit
li      $v0, 10              
syscall

convert:
	li $v0, 4
	beq  $a0, '0', option0
	beq  $a0, '1', option1
	beq  $a0, '2', option2 
	beq  $a0, '3', option3 
	beq  $a0, '4', option4
	beq  $a0, '5', option5 
	beq  $a0, '6', option6 
	beq  $a0, '7', option7 
	beq  $a0, '8', option8 
	beq  $a0, '9', option9 

	option0:
		j isOneDigit
		continue0:
		la $a0, zero     
		syscall
		j TraverseText
	option1:
		j isOneDigit
		continue1:
		la $a0, one     
		syscall
		j TraverseText
	option2:
		j isOneDigit
		continue2:
		la $a0, two     
		syscall
		j TraverseText
	option3:
		j isOneDigit
		continue3:
		la $a0, three     
		syscall
		j TraverseText
	option4:
		j isOneDigit
		continue4:
		la $a0, four     
		syscall
		j TraverseText
	option5:
		j isOneDigit
		continue5:
		la $a0, five     
		syscall
		j TraverseText
	option6:
		j isOneDigit
		continue6:
		la $a0, six     
		syscall
		j TraverseText
	option7:
		j isOneDigit
		continue7:
		la $a0, seven     
		syscall
		j TraverseText
	option8:
		j isOneDigit
		continue8:
		la $a0, eight     
		syscall
		j TraverseText
	option9:
		j isOneDigit
		continue9:
		la $a0, nine     
		syscall
		j TraverseText
		
isOneDigit:
	sub $t4,$t1, 2 #sayýdan bir önceki elemana bak
	la  $t5, buffer($t4)
	lb  $t4, ($t5)
	
	la  $t5, buffer($t1)#sayýdan bir sonraki elemana bak
	lb  $t6, ($t5)
	
	seq $t5, $t4, ' '
	seq $t7, $t6, ' '
	and $t8, $t5, $t7
	bnez $t8, numToText # Sayý tek digit ise texte çevir
	
	beq $t1, 1, toUpper #Stringin ilk karakteriyse ilk harfi büyük yaz
	
	j endSentence


isBeginSentence:
	sub $t4,$t1, 2 #sayýdan bir önceki elemana bak
	la  $t5, buffer($t4)
	lb  $t4, ($t5)
	
	sub $t3,$t1, 3 #sayýdan iki önceki elemana bak
	la  $t5, buffer($t3)
	lb  $t6, ($t5)
	
	seq $t5, $t4, ' '
	seq $t9, $t6, '.'
	and $t8, $t5, $t9
	
	bnez $t8, toUpper #Cümle baþý ise baþ harfini büyük yaz
	
	jr $ra
	
endSentence:

	la  $t5, buffer($t1)#sayýdan bir sonraki elemana bak
	lb  $t6, ($t5)
	
	addi $t4,$t1, 1 #sayýdan iki sonraki elemana bak
	la  $t5, buffer($t4)
	lb  $t4, ($t5)
	
	seq $t7, $t6, '.'
	seq $t5, $t4, ' '
	and $t8, $t5, $t7
	bnez $t8, numToText # Sayý tek digit ise texte çevir
	
	seq $t5, $t4, 0
	and $t8, $t5, $t7
	bnez $t8, numToText # Sayý cümlenin sonunda mý kontrol et
		
	li  $v0, 11
	syscall 
	
	j TraverseText

	
numToText:
	jal isBeginSentence 
	beq  $a0, '0', continue0
	beq  $a0, '1', continue1
	beq  $a0, '2', continue2 
	beq  $a0, '3', continue3 
	beq  $a0, '4', continue4
	beq  $a0, '5', continue5 
	beq  $a0, '6', continue6 
	beq  $a0, '7', continue7 
	beq  $a0, '8', continue8 
	beq  $a0, '9', continue9
	
toUpper:
	li  $v0, 4
	beq  $a0, '0', toUpper0
	beq  $a0, '1', toUpper1
	beq  $a0, '2', toUpper2 
	beq  $a0, '3', toUpper3 
	beq  $a0, '4', toUpper4
	beq  $a0, '5', toUpper5 
	beq  $a0, '6', toUpper6 
	beq  $a0, '7', toUpper7 
	beq  $a0, '8', toUpper8 
	beq  $a0, '9', toUpper9 

	toUpper0:
		la $a0, uzero   #loading value
		syscall
		j TraverseText
	toUpper1:
		la $a0, uone   #loading value
		syscall
		j TraverseText
	toUpper2:
		la $a0, utwo   #loading value
		syscall
		j TraverseText
	toUpper3:
		la $a0, uthree   #loading value
		syscall
		j TraverseText
	toUpper4:
		la $a0, ufour   #loading value
		syscall
		j TraverseText
	toUpper5:
		la $a0, ufive   #loading value
		syscall
		j TraverseText
	toUpper6:
		la $a0, usix   #loading value
		syscall
		j TraverseText
	toUpper7:
		la $a0, useven   #loading value
		syscall
		j TraverseText
	toUpper8:
		la $a0, ueight   #loading value
		syscall
		j TraverseText
	toUpper9:
		la $a0, unine   #loading value
		syscall
		j TraverseText
