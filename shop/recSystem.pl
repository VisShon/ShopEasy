product( "fabhomedecor fabric double sofa bed","furniture","living room furniture",32157,22646,9511,"false",0,"fabhomedecor").
product( "rapter bnc-179 bnc wire connector","household","tools & hardware",2299,1400,899,"false",0,"rapter").
product( "rapter bnc-047 bnc wire connector","household","tools & hardware",1299,899,400,"false",0,"rapter").
product( "elegance polyester multicolor abstract eyelet door curtain","furniture","home furnishing",1899,899,1000,"false",0,"elegance").
product( "santosh royal fashion cotton printed king sized double bedsheet","furniture","home furnishing",2699,1299,1400,"false",0,"santosh royal fashion").
product( "jaipur print cotton floral king sized double bedsheet","furniture","home furnishing",2599,698,1901,"false",0,"jaipur print").
product( "first choice cotton embroidered diwan set","furniture","home furnishing",2199,979,1220,"false",0,"first choice").
product( "santosh royal fashion cotton embroidered diwan set","furniture","home furnishing",2199,979,1220,"false",0,"santosh royal fashion").
product( "house this queen cotton duvet cover","furniture","home furnishing",1160,1160,0,"false",0,"house this").
product( "skipper blends aqua striped eyelet window curtain","furniture","home furnishing",1733,1039,694,"false",0,"skipper").
product( "kings multicolor tassels","furniture","home furnishing",1000,249,751,"false",0,"kings").





print_list([]):- nl.
print_list([H|T]):-write(H),write(' '),print_list(T).


subCat(S, J, O) 		:- S == 'a', J == 'a', O = 'home & kitchen, home furnishing, pens & stationaries, home decor & festive needs, home entertainment'. 
subCat(S, J, O) 		:- S == 'a', J == 'b', O = 'home & kitchen, home furnishing, pens & stationaries, home entertainment'. 
subCat(S, J, O) 		:- S == 'a', J == 'c', O = 'home & kitchen, pens & Stationaries, home decor and festive needs, home entertainment'.
subCat(S, J, O) 		:- S == 'a', J == 'd', O = 'home & kitchen, home furnishing, pens & stationaries, home decor and festive needs, home entertainment'.
subCat(S, J, O) 		:- S == 'b', J == 'a', O = 'pen & stationaries, mobile & accessories, mobile & accessories'.
subCat(S, J, O) 		:- S == 'b', J == 'b', O = 'tools & hardware, mobile & accessories, mobile & accessories'. 
subCat(S, J, O) 		:- S == 'b', J == 'c', O = 'tools & hardware, furniture, mobile & accessories'.
subCat(S, J, O) 		:- S == 'b', J == 'd', O = 'furniture, mobile & accessories'.
subCat(S, J, O).

start:-

        write('SHOP EASY - your very own shopping assistant'),nl,
		write('You want to know the best product for you? Dont worry we got it. Just answer a few questions for us first'),nl,nl,


		write('   What is your name? '),nl,
		read(Name),nl,


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

        write('   What category of product you want to buy? '),nl,
        write('a. Electronics'),nl,
        write('b. Furniture'),nl,
        write('c. Household'),nl,
        read(Category),nl,

        write(' We recommend you the following sub-category? '),nl,
        subCat(Sex,Job,SC),nl,
        write(SC),nl,
        write(' Please Select a sub-category? '),nl,
        read(SubCategory),nl,

        write('   Are you a Premium user? '),nl,
        write('a. true'),nl,
        write('b. false'),nl,
        read(IsPremium),nl,


        write('   What is your preferrence? '),nl,
        write('a. Price'),nl,
        write('b. Quality'),nl,
        read(Preferrence),nl,

        findall(Products,product(Products,_,SubCategory,_,_,_,IsPremium,_,_),Result),
        print_list(Result),

		write('We thank you for your honest answers and now be prepared to witness the magic of shop easy').