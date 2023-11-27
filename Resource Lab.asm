#=======================================================================
#include <iostream>
#include <string>
#
#using namespace std;
#
#void seasonal()
#{
#		<< "For winter season (April to May) these are crops that can be planted: "<<endl
#		<<"Wheat, Peas, Potatoes, "<<endl
#		<<"Which will be harvested January to March\n"<<endl
#		<<"For summer season (August to October) these are crops that can be planted: "<<endl
#		<<"Maize, Beans, Pumpkin, Sorghum, Watermelon, Groundnuts"<<endl
#		<<"Which will be harvested in November to December\n"<<endl
#		<< "To ensure sustanailable environment for the crops please make sure that you do the following"<<endl
#		<<"1. Always make sure the soil is fetrile before cultivation"<<endl
#		<<"2. Always water the plants "<<endl
#		<<"3. Always be consistent with regard to the instructions given. \n"<<endl;
#
#}
#
#double fertility(double average_fertility )
#{
#	double fertility;
#	cout << "How much manure in tons was added to your plot in tons[0---60]?"<<endl
#		 << " if you added 0-20 tons enter 1"<<endl
#		 << " if you added 21-40 tons enter 2"<<endl
#		 << " if you added 41-60 tons enter 3"<<endl
#		 <<" Enter your option: \n";
#		 cin>> fertility;
#	/*in terms of grading fertility we scaled it from 1-3 with respect to the numfertilityer of tons
#	0-20 tons==> the land is infertile (fertility=1)
#	21-40 tons==> the land moderately fetrile land (fertility=2)
#	41-60 tons==> the land is very fertile land  (fertility=3)
#	*/
#	return (average_fertility + fertility) /2;
#}
#
#double moisture(double average_moisture)
#
#{
#	double moisture;
#	cout << "How effecinet were you in watering the crops?"<<endl
#		 << " if not effecient enter 1"<<endl
#		 << " if moderately effecient enter 2"<<endl
#		 << " if very effecient enter 3"<<endl
#		 <<"Enter your option: \n";
#	cin>> moisture;
#	/*in terms of grading fertility we scaled it from 1-3 with respect to the numfertilityer of tons
#	not effecient ==> the land is dry (moisture=1)
#	moderate effecient ==> the land moderately fetrile land (moisture=2)
#	very effecient ==> the land is very fertile land  (moisture=3)
#	*/
#	return (average_moisture + moisture) /2;
#}
#
#void virtualplot(int selection)
#{
#	system("cls");
#	{
#		if(selection==1)
#		{
#			cout<< "This is how your plot should look like\n"<<endl;
#			cout<<" * represents Wheat and # represents Beans"<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<"# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # "<<endl<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<"# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # "<<endl<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<"# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # "<<endl<<endl<<endl;
#
#		}
#		if(selection==2)
#		{
#			cout<< "This is how your plot should look like\n"<<endl;
#			cout<<" * represents Peas and # represents Potatoes"<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<" #                #                    #                  # "<<endl<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<"        #                  #                     #          "<<endl<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<" #                #                    #                  # "<<endl<<endl;
#			cout<<"        #                  #                     #          "<<endl<<endl;
#
#		}
#		if(selection==3)
#		{
#			cout<< "This is how your plot should look like\n"<<endl;
#			cout<<" * represents Wheat and # represents Potaoes"<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<" #                #                    #                  # "<<endl<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<"        #                  #                     #          "<<endl<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<" #                #                    #                  # "<<endl<<endl;
#			cout<<"* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * "<<endl<<endl;
#			cout<<"        #                  #                     #          "<<endl<<endl;
#
#
#		}
#	}
#}
#
#int  intercropping(string season)
#{
#	system("cls");
#	int selection;
#	if(season=="winter")
#	{
#		cout<<"Crops that can be intercropped: "<<endl;
#		cout<<"1. Wheat and peas"<<endl;
#		cout<<"2. Peas and potatoes"<<endl;
#		cout<<"3. Wheat and potatoes"<<endl;
#	}
#	else if(season == "summer")
#	{
#		cout<<"4. Maize and beans"<<endl;
#		cout<<"5. Pumpkin and maize"<<endl;
#		cout<<"6. Pumpkin and beans"<<endl;
#		cout<<"7. Sorghum and ground nuts"<<endl;
#		cout<<"8. Watermelons and maize"<<endl;
#	}
#	cout<< " Enter selection: ";
#	cin >> selection;
#	return selection;
#}
#void yield(int option,int selection,int moisture,int fertility)
#	long double length, width;
#	int yield					//Yield to be harvested
#	long int line1=0,line2= 0;											//Number of crops in a line
#	long int landDivision;										//How many TOTAL lines
#	long double lineSpacing = 0.30, cropSpacing = 0.20;			//In centimeters
#	int moisturer, fertility1;
#	/*
#	cout<<"Uncertanities due to insufficient factors useful for crop development"<<endl
#	<<"Soil fertility:	"<<endl
#	<<"5% loss if good 		(type good)"<<endl
#	<<"15% loss if moderate 	(type moderate)"<<endl
#	<<"40% loss bad 	(type bad)"<<endl;
#
#	cout<<endl<<"Moisture content:"<<endl
#	<<"5% loss if good 		(type good)"<<endl
#	<<"15% loss if moderate 	(type moderate)"<<endl
#	<<"40% loss bad 	(type bad)"<<endl;
#	
#
#	cout<<"Enter the length of the field: \n"<<endl;
#	cin>>length;
#	cout<<"Width: "<<endl;
#	cin>>width;
#  	int small, medium, large
#	landDivision = (int)(width/lineSpacing);
#	line1 = (int)length/cropSpacing;
#	line2 = (int)length/(cropSpacing *3 );

#	area = length * width 
#	area_per_crop = area/4
#	certinity = fetrility + moisture
#       yeild = (area_per_crop * 10)*certinity
#	
#	if(season=="winter")
#	{
#		if(selection == 1)
#		{
#			cout<<"The yield for Wheat"<<yeild<<"units";
#			cout<<endl;
#			cout<<"The yeild for peas"<<yeild<<"units";
#			cout<<endl;
#
#		if(selection == 2)
#		{
#			cout<<"The yield for Wheat"<<yeild)<<"units";
#			cout<<endl;
#			cout<<"The yeild for potatoes"<<yeild<<"units";
#			cout<<endl;
#
#		}
#		if(selection == 3)
#		{
#			cout<<"The yield for peas"<<yeild)<<"units";
#			cout<<endl;
#			cout<<"The yeild for potatoes"<<yeild<<"units";
#			cout<<endl;
#		}
#	}
#	if(season=="summer")
#	{
#		if(option == 1)
#		{
#			cout<<"The yeild for maize "<<yeild)<<" units";
#			cout<<endl;
#			cout<<endl;
#		}
#		if(option == 2)
#		{
#			cout<<"The yeild for maize "<<yeild<<" units";
#			cout<<endl;
#			cout<<"The yeild for pumpkin "<<yeild<<" units";
#			cout<<endl;
#		}
#		if(option == 3)
#		{
#			cout<<"The yeild for pumpkin "<<yeild<<" units";
#			cout<<endl;
#			cout<<"The yeild for beans "<<yeild<<" units";
#			cout<<endl;
#		}
#		if(option == 4)
#		{
#			cout<<"The yeild for sorghum"<<yeild<<" units";
#			cout<<endl;
#			cout<<"The yeild for groundnuts"<<yeild<<" units";
#			cout<<endl;
#		}
#		if(option == 5)
#		{
#			cout<<"The yeild for watermelon "<<yeild<<" units";
#			cout<<endl;
#			cout<<"The yeild for maize"<<yeild<<" units";
#			cout<<endl;
#		}
#	}
#}
#
#int relay(int selection)
#{
#	system("cls");
#	int option;
#
#
#		    if(selection == 1)
#		    {
#		    	cout<<"You can relay wheat and peas with "<<endl
#		    		<<"1.Maize and beans"<<endl
#		    		<<"2.Sorghum and groundnuts"<<endl;
#			}
#			if (selection==2)
#			{
#		    	cout<<"You can relay peas and potatoes with "<<endl
#		    		<<"3.Watermelon and Maize"<<endl
#		    		<<"4.Pumkin and beans"<<endl;
#			}
#			if (selection==3)
#			{
#		    	cout<<"You can relay wheat and potatoes with "<<endl
#		    		<<"5.Maize and beans"<<endl
#		    		<<"6.Pumkin and sorghum"<<endl<<endl;
#    		}
#    		cout<<"Enter any of the oprions above: ";
#    		cin>> option;
#   		return option;
#}
#
#
#
#
#
#int main()
#{
#	string season;
#	double fertile,moist;
#	int selection,option;
#	bool plant = false;
#
#	int i = 0;
#	while(i<14)
#	{
#		i++;
#			if(i==1 || i == 13)
#			{
#				cout<< "January farming report"<<endl;
#				if(plant)
#				{
#					season = "winter";
#					moist = moisture(moist);
#					fertile = fertility(fertile);
#					yield(season,selection,moist,fertile);
#				}
#				else
#					cout<<"You can't harvest anything crops because you did not plant any crop \n"<<endl;
#			}
#			if(i == 2)
#			{
#				cout<<"February Farming report"<<endl;
#				cout<<"No farming activities till April \n"<<endl;
#			}
#
#
#			if(i == 3)
#			{
#				cout<<"March Farming report"<<endl;
#				cout<<"No farming activities till April\n"<<endl;
#			}
#
#			if(i==4)
#			{
#				plant = true;
#				cout<<"April----time to cultivate winter crops"<<endl;
#				cout << "\nHow much manure in tons was added to your plot in tons[0---60]?"<<endl
#				 << " if you added 0-20 tons enter 1"<<endl
#				 << " if you added 21-40 tons enter 2"<<endl
#				 << " if you added 41-60 tons enter 3\n"<<endl
#				 <<" Enter your option: ";
#				 cin>> fertile;
#				cout << "\nHow effecinet were you in ensuring suffecient moisture for cultivating the plants?"<<endl
#				 << " if not effecient enter 1"<<endl
#				 << " if moderately effecient enter 2"<<endl
#				 << " if very effecient enter 3\n"<<endl
#				 <<"Enter your option: ";
#				 cin>> moist;
#				selection = intercropping("winter");
#				virtualplot(selection);
#			}
#			if(i == 5)
#			{
#				cout<<"\n May Farming report"<<endl;
#				season = "winter";
#				moist = moisture(moist);
#				fertile = fertility(fertile);
#
#			}
#			if( i == 6)
#			{
#				cout<<"\n June Farming report"<<endl;
#				season = "winter";
#				moist = moisture(moist);
#				fertile = fertility(fertile);
#			}
#			if( i == 7)
#			{
#				cout<<"\n July Farming report"<<endl;
#				season = "winter";
#				moist = moisture(moist);
#				fertile = fertility(fertile);
#			}
#			if(i == 8)
#			{
#				cout<<"\n August----time to cultivate summer crops ";
#				option = relay(selection);
#				moist = moisture(moist);
#				fertile = fertility(fertile);
#			}
#			if(i == 9)
#			{
#				cout<<"\n September Farming report"<<endl;
#				moist = moisture(moist);
#				fertile = fertility(fertile);
#			}
#			if(i == 10)
#			{
#				cout<<"\n October Farming report"<<endl;
#				fertile = fertility(fertile);
#			if(i == 11)
#			{
#				season = "summer";
#				cout<<"\n November-------harvesting time for summer crops\n";
#				yield(season,selection,moist,fertile);
#				moist = moisture(moist);
#				fertile = fertility(fertile);
#			}
#			if(i == 12)
#			{
#				cout<<"\n December Farming report"<<endl;
#				moist = moisture(moist);
#				fertile = fertility(fertile);
#			}
#
#
#	//system("cls"); nere leka ho ba smart
#	/*int a = 2;
#	int b = 2;
#	b = moisture(b);
#	a=fertility(a);
#	cout << a;*/
#	return 0;
#}
#
#
#=======================================================================
.data
wlcmsg: .asciiz"******* Welcome to Machobane Farming system *******\n\nFor winter season (April to May) these are crops that can be planted: \nWheat, Peas, Potatoes, Which will be harvested January to March\nFor summer season (August to October) these are crops that can be planted: \nMaize, Beans, Pumpkin, Sorghum, Watermelon, Groundnuts\nWhich will be harvested in November to December\nTo ensure sustanailable environment for the crops please make sure that you do the following\n1. Always make sure the soil is fetrile before cultivation\n2. Always water the plants \n3. Always be consistent with regard to the instructions given. \n"

fertmsg: .asciiz"How much manure in tons was added to your plot in tons[0---60]\nif you added 0-20 tons enter 1\nif you added 21-40 tons enter 2\nif you added 41-60 tons enter 3\nEnter your option: \n"

moistmsg: .asciiz"How effecinet were you in watering the crops?\n if not effecient enter 1\n if moderately effecient enter 2\n if very effecient enter 3\nEnter your option: \n"

janmsg1: .asciiz "January farming report\n"

janmsg2: .asciiz"You can't harvest anything crops because you did not plant any crop \n"

janmsg3: .asciiz"You have successfully harvested\n"

febmsg: .asciiz"February Farming report\nNo farming activities till April \n"

marmsg: .asciiz"March Farming report\nNo farming activities till March\n"

aprmsg1: .asciiz"April----time to cultivate winter crops\nnHow much manure in tons was added to your plot in tons[0---60]?\nif you added 0-20 tons enter 1\nif you added 21-40 tons enter 2\nif you added 41-60 tons enter 3\nEnter your option: "

aprmsg2: .asciiz"\nHow effecinet were you in ensuring suffecient moisture for cultivating the plants?\nif not effecient enter 1\nif moderately effecient enter 2\n if very effecient enter 3\nEnter your option:\n"



statement1: .asciiz "This is how your plot should look like\n * represents Wheat and # represents Beans\n* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # \n* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # \n* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # "

statement2: .asciiz "This is how your plot should look like \n * represents Peas and # represents Potatoes \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n  #                #                    #                  # \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n         #                  #                     #           \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n  #                #                    #                  # \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *  \n        #                  #                     #          "


statement3: .asciiz "This is how your plot should look like \n * represents Wheat and # represents Potaoes \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n  #                #                    #                  # \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n        #                  #                     #          \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n #                #                    #                  # \n * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * \n        #                  #                     #          "


len: .asciiz"Enter the length of the field(in meters): \n"

wid: .asciiz"Enter width(in meters):  "

wheat: .asciiz "The yield for Wheat: "

peas: .asciiz "The yield for Peas: "

potatoes: .asciiz "The yield for Potatoes: "

maize: .asciiz "The yield for maize: "

beans: .asciiz "The yield for Beans: "

pumpkin: .asciiz "The yield for Pumpkin: "

sorghum: .asciiz "The yield for Sorghum: "

groundnuts: .asciiz "The yield for Groundnuts: "

watermelon: .asciiz "The yield for Watermelon: "

linespacing: .double 0.3

cropspacing: .double 0.2

small: .word 5
medium: .word 10
large: .word 15



intermsg: .asciiz"Crops that can be intercropped: \n1. Wheat and peas\n2. Peas and potatoes\n3. Wheat and potatoes\nEnter selection: \n"

relaymsg1: .asciiz"ou can relay wheat and peas with\n1.Maize and beans\n2.Sorghum and groundnuts\nEnter any of the oprions above: \n"

relaymsg2: .asciiz"You can relay peas and potatoes with\n3.Watermelon and Maize\n4.Pumkin and beans\nEnter any of the oprions above: \n"

relaymsg3: .asciiz"You can relay wheat and potatoes with\n5.Maize and beans\n6.Pumkin and sorghum\nEnter any of the oprions above: \n"

end: .asciiz"\nwe done"

maymsg: .asciiz"May Farming report\n"

junemsg: .asciiz"June Farming report\n"

julymsg: .asciiz"July Farming report\n"

augmsg: .asciiz"August----time to cultivate summer crops\n"

septmsg: .asciiz"September Farming report\n"

octmsg: .asciiz"October Farming report\n"

novmsg: .asciiz"November Farming report\n"

decmsg: .asciiz"December Farming report\n"



buffer: .space 4000
num : .space 8
num1: .double 0.60

num2: .double 0.85

num3: .double 0.95

.text
.globl main
main:
	jal seasonal
	
	sub $sp,$sp, 32    #to store our variables 
	li $t0,1  #initialize i to 1
	li $t1,14 # terminating condition
	jal mainloop

	li $v0,4
	la $a0,end
	syscall

	
	li $v0,10
	syscall

seasonal:
	li $v0,4
	la $a0,buffer
	li $a1 4000
	la $a0, wlcmsg
	syscall

	jr $ra

mainloop:
	
	
	beq $t0,1,january
	beq $t0,2,february
	beq $t0,3,march
	beq $t0,4,april
	beq $t0,5,may
	beq $t0,6,june
	beq $t0,7,july
	beq $t0,8,august
	beq $t0,9,september
	beq $t0,10,october
	beq $t0,11,november
	beq $t0,12,december
	beq $t0,$t1,loop_end

january:
	li $v0,4
	la $a0,janmsg1
	syscall

	beq $t0,1,jan # if we did not plant during winter time
	beq $t0,13,jan2 # if we plantd during winter time

jan:
	li $v0,4
	la $a0,janmsg2
	syscall

	addi $t0,$t0,1
	j mainloop

jan2:
	li $v0,4
	la $a0,janmsg3
	syscall
	
	lw $t3,28($sp) #load fertility
	lw $t4,24($sp) # load moisture
	
	lw $t3,8($sp) #load length of the field
	lw $t4,4($sp) #load width of the field
	
	sw $ra,0($sp)
	jal yield
	lw $ra,0($sp)
	
	#yet to harvest
	addi $t0,$t0,1
	j mainloop

february:
	li $v0,4
	la $a0,febmsg
	syscall

	addi $t0,$t0,1
	j mainloop

march:
	li $v0,4
	la $a0,marmsg
	syscall

	addi $t0,$t0,1
	j mainloop

april:
	li $t4,1 # intiliaze plant variable to 1,which is true

 	li $v0,4
	la $a0,buffer
	li $a1,4000
	la $a0,aprmsg1
	syscall

	#Read Fertile from the user
	li $v0, 5
	syscall
	
	sw $v0,28($sp) #store fertile into stackframe at the highest address
	
	li $v0,4
	la $a0,buffer
	li $a1,4000
	la $a0,aprmsg2
	syscall

	# Read moisture from the user
	li $v0,5
	syscall

	sw $v0,24($sp) #store moisture into the stackframe

	sw $t4,20($sp) # store plant into the stackframe
	
	li $v0,4
	la $a0,len
	syscall
	
	#Read length of the plot
	li $v0,5
	syscall
	
	sw $v0,8($sp) # store the length into the stack frame
	
	li $v0,4
	la $a0, wid
	syscall
	
	#Read width of the plot
	li $v0,5
	syscall
	
	sw $v0,4($sp) #store the width into the Stackframe
	
	sw $ra,0($sp)
	jal intercroping
	jal virtualplot
	lw $ra,0($sp)
	
	

	addi $t0,$t0,1
	

	j mainloop

may:
	li $v0,4
	la $a0,maymsg
	syscall

	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)
	jal fertility
	jal moisture
	lw $ra,0($sp)

	addi $t0,$t0,1
	j mainloop
	
june: 
	li $v0,4
	la $a0,junemsg
	syscall

	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)
	jal fertility
	jal moisture
	lw $ra,0($sp)
	
	addi $t0,$t0,1
	j mainloop

july:
	li $v0,4
	la $a0,julymsg
	syscall

	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)
	jal fertility
	jal moisture
	lw $ra,0($sp)
	
	addi $t0,$t0,1
	j mainloop

august:
	li $v0,4
	la $a0,augmsg
	syscall

	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)

	jal relaycropping
	jal fertility
	jal moisture
	lw $ra,0($sp)
	

	addi $t0,$t0,1
	j mainloop

september: 

	li $v0,4
	la $a0,septmsg
	syscall

	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)
	jal fertility
	jal moisture
	lw $ra,0($sp)
	
	addi $t0,$t0,1
	j mainloop

october:

	li $v0,4
	la $a0,octmsg
	syscall

	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)
	jal fertility
	jal moisture
	lw $ra,0($sp)
	
	addi $t0,$t0,1
	j mainloop

november:

	li $v0,4
	la $a0,novmsg
	syscall

	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)
	jal fertility
	jal moisture
	lw $ra,0($sp)

	#HARVEST
	lw $t3,28($sp) #load fertility
	lw $t4,24($sp) # load moisture
	
	sw $ra,0($sp)
	jal yield1
	lw $ra,0($sp)

	addi $t0,$t0,1
	j mainloop

december:

	li $v0,4
	la $a0,decmsg
	syscall
	
	#store the return adrdress of mainloop before jumping
	sw $ra,0($sp)
	jal fertility
	jal moisture
	lw $ra,0($sp)

	addi $t0,$t0,1
	j mainloop
loop_end:

	jr $ra



fertility:

	li $v0,4
	la $a0, fertmsg
	syscall
	
	li $v0,5 
	syscall

	move $t5,$v0 #move the read value of fertiliry to the $t0
 	lw $t7,28($sp)   #load the average fertility value in stack frame into $a0

	#compute the current avg fertility from the past fertility and the current fertility month
	add $v1,$t7,$t5      
	li $t3, 2
	div $v1,$t3
	mflo $v1

	sw $v1,28($sp)
	

	jr $ra

moisture:

	li $v0,4
	la $a0, moistmsg
	syscall
	
	li $v0,5 
	syscall

	move $t5,$v0 #move the read value of moisture to the $t0
 	lw $t7,24($sp)   #load the average moisture value in stack frame into $a0

	#compute the current avg fertility from the past fertility and the current moisture month
	add $v1,$t7,$t5      
	li $t3, 2
	div $v1,$t3
	mflo $v1

	sw $v1,24($sp)
	

	jr $ra

intercroping:
	
	li $v0,4
	la $a0,buffer
	li $a1,4000
	la $a0,intermsg
	syscall

	li $v0, 5
	syscall
	
	sw $v0,16($sp)   #store the selection variable into the stack frame

	jr $ra

relaycropping:

	lw $t6,16($sp)
	
	beq $t6,1,relay1
	beq $t6,2,relay2
	beq $t6,3,relay3

relay1:
	
	li $v0,4
	la $a0,buffer
	li $a1,4000
	la $a0,relaymsg1
	syscall

	li $v0,5
	syscall

	sw $v0, 12($sp)

	jr $ra
	
relay2:
	
	li $v0,4
	la $a0,buffer
	li $a1,4000
	la $a0,relaymsg2
	syscall

	li $v0,5
	syscall

	sw $v0, 12($sp)

	jr $ra

relay3:
	
	li $v0,4
	la $a0,buffer
	li $a1,4000
	la $a0,relaymsg3
	syscall

	li $v0,5
	syscall

	sw $v0, 12($sp)

	jr $ra
	
virtualplot:

	lw $t2,16($sp)
	beq $t2,1,plot_1
	beq $t2,2,plot_2
	beq $t2,3,plot_3


plot_1:
	li $v0, 4
	la $a0,buffer
	li $a1,4000
	la $a0, statement1
	syscall
		
	jr $ra
		
plot_2:	
	li $v0, 4
	la $a0,buffer
	li $a1,4000
	la $a0, statement2
	syscall
	
	jr $ra
	
plot_3:	
	li $v0, 4
	la $a0,buffer
	li $a1,4000
	la $a0, statement3
	syscall
		
	jr $ra
	
yield:
	
	
	lw $t5,8($sp) #load length
	lw $t6,4($sp) #load width
	
	mul $t1,$t5,$t6 # area
	li $t3,4
	
	div $t1,$t1,$t3 #area per crop
	
	la $t1,small
	lw $a1,28($sp) #fertility
	lw $a2,24($sp)
	
	add $a1,$a1,$a2
	
	mul $t1,$t1,$t2
	
	mul $t1,$t1,$a1 #yield1
	li $t3,100000
	div $t1,$t1,$t3
	
	lw $t0,16($sp)
	beq $t0,1,pair1
	beq $t0,2,pair2
	beq $t0,3,pair3
	
	
pair1:
	
	li $v0,4
	la $a0,wheat
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	

	
	li $v0, 4
	la $a0,peas
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra
	
pair2:
	li $v0,4
	la $a0,wheat
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0, potatoes
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra
	
pair3:
	li $v0,4
	la $a0,peas
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0,potatoes
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra
yield1:
	
	
	lw $t5,8($sp) #load length
	lw $t6,4($sp) #load width
	
	mul $t1,$t5,$t6 # area
	li $t3,4
	
	div $t1,$t1,$t3 #area per crop
	
	la $t1,small
	lw $a1,28($sp) #fertility
	lw $a2,24($sp)
	
	add $a1,$a1,$a2
	
	mul $t1,$t1,$t2
	
	mul $t1,$t1,$a1 #yield1
	li $t3,100000
	div $t1,$t1,$t3
	lw $t3,8($sp)
	beq $t3,1,pair4
	beq $t3,2,pair5
	beq $t3,3,pair6
	beq $t3,4,pair7
	beq $t3,5,pair8
	
pair4:
	li $v0,4
	la $a0,maize
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0, beans
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra
	
pair5:
	li $v0,4
	la $a0,maize
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0, pumpkin
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra

pair6:
	li $v0,4
	la $a0,pumpkin
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0, beans
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra

pair7:
	li $v0,4
	la $a0,sorghum
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0, groundnuts
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra
	
pair8:
	li $v0,4
	la $a0,watermelon
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	li $v0,4
	la $a0, maize
	syscall
	
	li $v0,1
	move $a0,$t1
	syscall
	
	jr $ra
	
	
		
	


	
	
	

	
		
	

	
	


	
