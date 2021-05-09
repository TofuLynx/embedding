
#parameters    
param n, integer, > 0; /* number of assets */    
param B, >= 0;      
param mu{i in 1..n};                          
param sigma{i in 1..n, j in 1..n};    
param q;    
                                              
#variables                                    
var y{i in 1..n, j in 1..n}, binary;    
var x{i in 1..n}, binary;                     
    
#capacity constraint    
s.t. card0: sum{i in 1..n} x[i] = B ;    
#constraints to link x and y                   
s.t. card1{i in 1..n,j in 1..n}: y[i,j] <= x[i] ;    
s.t. card2{i in 1..n,j in 1..n}: y[i,j] <= x[j] ;    
s.t. card3{i in 1..n,j in 1..n}: y[i,j] >= x[i]+x[j]-1 ;    
    
#objective function    
minimize obj: sum{i in 1..n, j in 1..n} y[i,j] * sigma[i,j] * q - sum{i in 1..n} mu[i]*x[i];    

solve;
printf: "{ ""solution"": [%d", x[1] > "results/N16_B0.5_correlated_classical/IPL_linearized_N16q20.00B8_solution.json";
printf{i in 2..n}: ",%d", x[i] >> "results/N16_B0.5_correlated_classical/IPL_linearized_N16q20.00B8_solution.json";
printf: "]}" >> "results/N16_B0.5_correlated_classical/IPL_linearized_N16q20.00B8_solution.json";

#data:
data;

param n := 16;
param q := 20;
param B := 8;
param mu :=
1 0.002782117985456717
2 0.002252224798986269
3 0.004930508169410952
4 0.004904720212679842
5 0.004999188109115904
6 -0.001202570182191698
7 0.005804769673636323
8 0.004156159290747885
9 0.00313721804173821
10 0.0031623412477083334
11 0.005404942027079224
12 0.0039347307922897035
13 0.0014230506708146685
14 0.00353148916217389
15 0.003561234066557778
16 0.003118730295240596;
param sigma : 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 :=
1 0.0002362751262683192 0.00018389639675702146 0.0002789143209291271 0.0002557455803583558 0.00023390349073193107 0.00026399765411761096 0.00023311631296020485 0.00017305792233786982 0.0002134826061422893 0.0002238442165080389 0.00023861780839862657 0.0002456366742983983 0.00025528614997495484 0.00019998412768631812 0.00021616360852042582 0.00027888001389912644
2 0.00018389639675702146 0.00020852484865061088 0.000260033112343605 0.00020384077694428498 0.00020330784402001223 0.00025562084295418575 0.00022675092572846853 0.00016802885665378407 0.00020257935884611695 0.00022239069616531777 0.00019618636306207503 0.00021230363213528718 0.0001902475862511304 0.00022801571063601155 0.0001600007856799341 0.00027033290749688794
3 0.0002789143209291271 0.000260033112343605 0.00041790196172124375 0.0003562682797754523 0.0003393995045025121 0.00041149922282010645 0.00035347765738953044 0.00022913662959062582 0.00030493375439300083 0.0003327551703717083 0.00030834559436531225 0.0003490009375368679 0.0003207464533868036 0.0003171999097739343 0.0002686385356256879 0.0004082626802316255
4 0.0002557455803583558 0.00020384077694428498 0.0003562682797754523 0.0003489798965420522 0.0003140774044815816 0.00036153337401965464 0.0003036729933490082 0.00019046420126602346 0.0002571466529302512 0.0002771867647563981 0.0002737069490520482 0.0003087755515246635 0.000307914889842801 0.00024691792048764377 0.0002448859351735955 0.0003453816308139265
5 0.00023390349073193107 0.00020330784402001223 0.0003393995045025121 0.0003140774044815816 0.0003030187195647059 0.0003411346776868435 0.00028861394611659214 0.00018246622240332563 0.0002537114974480425 0.0002734807338399013 0.0002608852257096235 0.0002934333331072113 0.0002757910487067542 0.00026153542082944396 0.00022664864839746124 0.00034586785488977613
6 0.00026399765411761096 0.00025562084295418575 0.00041149922282010645 0.00036153337401965464 0.0003411346776868435 0.0005392299634639984 0.00037333488617690504 0.00024180387544636757 0.0003310435697587253 0.00034478323114341125 0.0002940971761741942 0.0003539724206496882 0.00031294216144648305 0.00034708665682832597 0.00027952786866964816 0.0004084360260695141
7 0.00023311631296020485 0.00022675092572846853 0.00035347765738953044 0.0003036729933490082 0.00028861394611659214 0.00037333488617690504 0.0003188028505144802 0.0001901012934196362 0.00026463723944038296 0.0002849784486319544 0.0002546117875112539 0.0003007882429643764 0.0002657442236856707 0.00027423715950164267 0.00021962589824155862 0.00033578633604790025
8 0.00017305792233786982 0.00016802885665378407 0.00022913662959062582 0.00019046420126602346 0.00018246622240332563 0.00024180387544636757 0.0001901012934196362 0.00018089392171283394 0.00017763214447978076 0.0001877378099582506 0.0001837702192676372 0.00019485803060439576 0.00018278145203446143 0.00019758659719091667 0.00016132737014191057 0.00025126637259476905
9 0.0002134826061422893 0.00020257935884611695 0.00030493375439300083 0.0002571466529302512 0.0002537114974480425 0.0003310435697587253 0.00026463723944038296 0.00017763214447978076 0.0002654104855232494 0.00028021304044806067 0.00022364381967303614 0.0002565613510833626 0.0002276996546100936 0.00025211565364331853 0.00020127494767336273 0.00031765610854129903
10 0.0002238442165080389 0.00022239069616531777 0.0003327551703717083 0.0002771867647563981 0.0002734807338399013 0.00034478323114341125 0.0002849784486319544 0.0001877378099582506 0.00028021304044806067 0.00030592342575556724 0.00023816880592650693 0.0002723058688404718 0.0002411778838788005 0.0002754319449318882 0.00020788061229362191 0.0003441472742880822
11 0.00023861780839862657 0.00019618636306207503 0.00030834559436531225 0.0002737069490520482 0.0002608852257096235 0.0002940971761741942 0.0002546117875112539 0.0001837702192676372 0.00022364381967303614 0.00023816880592650693 0.00027924043314442033 0.0002799359730375195 0.00026376624414347456 0.00024844321990195504 0.0002473312586889233 0.0003185211468970159
12 0.0002456366742983983 0.00021230363213528718 0.0003490009375368679 0.0003087755515246635 0.0002934333331072113 0.0003539724206496882 0.0003007882429643764 0.00019485803060439576 0.0002565613510833626 0.0002723058688404718 0.0002799359730375195 0.0003414925352983394 0.0002693223915279764 0.0002714637818115214 0.00024878175659157265 0.000357220798165101
13 0.00025528614997495484 0.0001902475862511304 0.0003207464533868036 0.000307914889842801 0.0002757910487067542 0.00031294216144648305 0.0002657442236856707 0.00018278145203446143 0.0002276996546100936 0.0002411778838788005 0.00026376624414347456 0.0002693223915279764 0.0003077684976218609 0.0002189927767379613 0.00024042039882619598 0.00030366335947429974
14 0.00019998412768631812 0.00022801571063601155 0.0003171999097739343 0.00024691792048764377 0.00026153542082944396 0.00034708665682832597 0.00027423715950164267 0.00019758659719091667 0.00025211565364331853 0.0002754319449318882 0.00024844321990195504 0.0002714637818115214 0.0002189927767379613 0.0003321910190524795 0.00020966649846697755 0.0003432408253667318
15 0.00021616360852042582 0.0001600007856799341 0.0002686385356256879 0.0002448859351735955 0.00022664864839746124 0.00027952786866964816 0.00021962589824155862 0.00016132737014191057 0.00020127494767336273 0.00020788061229362191 0.0002473312586889233 0.00024878175659157265 0.00024042039882619598 0.00020966649846697755 0.00024309123209688237 0.0002717878484367583
16 0.00027888001389912644 0.00027033290749688794 0.0004082626802316255 0.0003453816308139265 0.00034586785488977613 0.0004084360260695141 0.00033578633604790025 0.00025126637259476905 0.00031765610854129903 0.0003441472742880822 0.0003185211468970159 0.000357220798165101 0.00030366335947429974 0.0003432408253667318 0.0002717878484367583 0.0004611551806832894;
end;
