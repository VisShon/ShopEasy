product('sandal','Women Clothing',300,100,true).
product('high heels','Women Clothing',300,100,true).
product('Oneplus','Electronics',300,100,true).
product('Table','Furniture',300,100,true).
product('Prestige','Women Clothing',300,100,true).




# Helper Function
print_list([]):- nl.
print_list([H|T]):-write(H),write(' '),print_list(T).  #recursive function to print a list

sortWithPrice(Unsorted,Sorted):-

sortWithRating(Unsorted,Sorted):-

selectSubCategory(A,S,J):-
    

recommendProducts(Category,P,B,I):-


LIST(electronics,item, X,Y,Z)

start:-

        write('SHOP EASY - your very own shopping assistant'),nl,
		write('You want to know the best product for you? Dont worry we got it. Just answer a few questions for us first'),nl,nl,


		write('   What is your name? '),nl,
		read(Name),nl,

#       To Select Subcategories.
		write('   Hi there '),write(Name),nl,
        write('   What is your sex? '),nl,
        write('a. Female'),nl,
        write('b. Male'),nl,
        read(Sex),nl,

        write('   What is your age group? '),nl,
        write('a. Below 13 years'),nl,
        write('b. 13 to 18 years'),nl,
        write('c. 18 years plus'),nl,
        read(AgeGroup),nl,

        write('   What is your current working status? '),nl,
        write('a. Working professional'),nl,
        write('b. Homemaker'),nl,
        write('c. Student'),nl,
        write('d. Retired'),nl,
        read(Job),nl,

        write('   What category of product you want to buy'),nl,
        write('a. Electronics'),nl,
        write('b. Furniture'),nl,
        write('c. Household'),nl,
        read(Category),nl,

#   function for sbcategory
        write(' We recommend you the following sub-category')
        

#       To narrow down products.
        write('   What is your budget '),nl,
        write('a. under ₹1000'),nl,
        write('b. under ₹5000'),nl,
        write('c. under ₹10000'),nl,
        write('d. above ₹10000'),nl,
        read(Budget),nl,  

        write('   Are you a Premium user '),nl,
        write('a. Yes'),nl,
        write('b. No'),nl,
        read(isPremium),nl,

#       To start the process.

        write('   What is your preferrence? '),nl,
        write('a. Price'),nl,
        write('b. Quality'),nl,
        read(Preferrence),nl,



		write('We thank you for your honest answers and now be prepared to witness the magic of shop easy').