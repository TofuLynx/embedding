
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
printf: "{ ""solution"": [%d", x[1] > "results/N16_B0.5_diversified_classical/IPL_linearized_N16q7.00B8_solution.json";
printf{i in 2..n}: ",%d", x[i] >> "results/N16_B0.5_diversified_classical/IPL_linearized_N16q7.00B8_solution.json";
printf: "]}" >> "results/N16_B0.5_diversified_classical/IPL_linearized_N16q7.00B8_solution.json";

#data:
data;

param n := 16;
param q := 7.0;
param B := 8;
param mu :=
1 -0.005540274021026637
2 0.003756576615758783
3 0.0012119520008246286
4 0.002810252728303192
5 -0.0015300997974385389
6 -0.00927181911254824
7 0.0005963621768375505
8 0.0019253597258086451
9 0.0033010435191772767
10 0.009227286384188498
11 0.003530335514947247
12 0.0037070863316585323
13 0.003481382261382987
14 0.0012962217932174281
15 0.006048248115296034
16 0.000930689698993048;
param sigma : 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 :=
1 0.0006514284643533442 -4.453243012709019e-05 -6.798536468440086e-06 -3.715297822143611e-05 -1.0118472261483169e-05 3.5762401590453675e-05 3.9977781618123205e-05 -8.243597637374204e-06 0.0001233677760414747 6.795774083314762e-06 8.78952870558724e-09 -3.6671403855683974e-07 -1.884936211333593e-05 -1.0808169853177707e-05 -2.328082405143327e-05 9.01335363291182e-05
2 -4.453243012709019e-05 0.00020608078179912523 2.6803142889080875e-05 -1.8663927344639268e-05 1.1997886016094332e-05 -3.834044680561954e-05 3.3731658325804595e-05 5.1525416064273355e-06 -9.845131163650533e-06 7.113920670130387e-06 -5.8951288566080385e-06 4.328925725460776e-05 -1.9537496592870316e-05 1.484053251904616e-05 1.5632707437571104e-06 -2.0852223979552967e-06
3 -6.798536468440086e-06 2.6803142889080875e-05 0.0002698238337163489 -2.7793931519891188e-05 -2.731781052832831e-05 -7.093063695005227e-07 9.821192597294464e-06 9.300768308141057e-06 2.3048789799522912e-05 -9.607962541367506e-06 -2.1893795726914636e-05 3.8802802484200755e-07 -0.00013813482448088598 -1.4270899821768734e-05 1.2109299517515238e-05 2.1784096897068196e-05
4 -3.715297822143611e-05 -1.8663927344639268e-05 -2.7793931519891188e-05 0.00012563110273737892 7.43570650882052e-05 -7.982225514307325e-05 5.4654349502872985e-06 1.3192242240748828e-05 -2.507778773383065e-07 1.697808917586943e-05 5.998335294810849e-06 -1.7582496707086605e-07 -5.397497004420322e-06 -1.4374150781031282e-06 3.3248989514038346e-05 5.2160140467368645e-06
5 -1.0118472261483169e-05 1.1997886016094332e-05 -2.731781052832831e-05 7.43570650882052e-05 0.0001764274832623468 -7.881186825571873e-06 2.3118981818673035e-05 -8.48922660259592e-06 1.165944068002265e-05 2.2429737649217826e-05 1.4238659642524584e-06 -4.0796888481304405e-05 1.2874834970545444e-05 3.389203053428032e-06 -4.6783660971219356e-05 2.08444641591657e-05
6 3.5762401590453675e-05 -3.834044680561954e-05 -7.093063695005227e-07 -7.982225514307325e-05 -7.881186825571873e-06 0.0021367359608265007 -6.572282536227429e-05 9.621387024076019e-05 1.9382367516974815e-05 0.00010072658529981419 -1.9643298024985134e-05 -5.344107627338689e-05 -4.574176124326598e-05 0.00017732944575855978 -0.00040218949695523343 1.7741217515552816e-05
7 3.9977781618123205e-05 3.3731658325804595e-05 9.821192597294464e-06 5.4654349502872985e-06 2.3118981818673035e-05 -6.572282536227429e-05 9.644068006587488e-05 -1.0365110793835611e-05 -2.1771194834940475e-07 1.635621576543429e-05 1.138103930050278e-05 1.7853397690611684e-05 1.0542984365339559e-05 -1.3104114206013548e-06 -1.3913311456496233e-05 3.970030737163412e-05
8 -8.243597637374204e-06 5.1525416064273355e-06 9.300768308141057e-06 1.3192242240748828e-05 -8.48922660259592e-06 9.621387024076019e-05 -1.0365110793835611e-05 0.0004060459504824296 6.657448787128726e-05 9.131580033498576e-05 -8.494121557065822e-06 -1.73986509335463e-06 -5.120169219915537e-06 4.0972870316576246e-05 -1.0065060456080742e-05 -2.9570867824696194e-06
9 0.0001233677760414747 -9.845131163650533e-06 2.3048789799522912e-05 -2.507778773383065e-07 1.165944068002265e-05 1.9382367516974815e-05 -2.1771194834940475e-07 6.657448787128726e-05 8.861513533967589e-05 3.862077480991027e-05 -3.2101408040796984e-06 1.6771901885513234e-05 -5.157427867009935e-06 2.4794259310464382e-06 -1.2728331978318178e-05 9.378991879578857e-06
10 6.795774083314762e-06 7.113920670130387e-06 -9.607962541367506e-06 1.697808917586943e-05 2.2429737649217826e-05 0.00010072658529981419 1.635621576543429e-05 9.131580033498576e-05 3.862077480991027e-05 0.0004806487678385114 6.758973370109648e-06 1.5258173498844986e-05 2.8932336627139744e-05 2.7122919282528625e-05 -8.632891459513443e-06 1.3694997201237113e-06
11 8.78952870558724e-09 -5.8951288566080385e-06 -2.1893795726914636e-05 5.998335294810849e-06 1.4238659642524584e-06 -1.9643298024985134e-05 1.138103930050278e-05 -8.494121557065822e-06 -3.2101408040796984e-06 6.758973370109648e-06 0.00010664197752113549 1.805285126766733e-05 -9.19317315911419e-06 -1.4058431032015523e-05 1.7776136486431683e-06 6.289332511191709e-06
12 -3.6671403855683974e-07 4.328925725460776e-05 3.8802802484200755e-07 -1.7582496707086605e-07 -4.0796888481304405e-05 -5.344107627338689e-05 1.7853397690611684e-05 -1.73986509335463e-06 1.6771901885513234e-05 1.5258173498844986e-05 1.805285126766733e-05 0.00011415908713822149 1.890012784969908e-06 9.117638886785872e-06 -1.658728793662558e-05 -4.824617264881923e-06
13 -1.884936211333593e-05 -1.9537496592870316e-05 -0.00013813482448088598 -5.397497004420322e-06 1.2874834970545444e-05 -4.574176124326598e-05 1.0542984365339559e-05 -5.120169219915537e-06 -5.157427867009935e-06 2.8932336627139744e-05 -9.19317315911419e-06 1.890012784969908e-06 0.0001407410044027519 1.4754688383140044e-05 -1.1705176520061943e-05 4.564182942363125e-07
14 -1.0808169853177707e-05 1.484053251904616e-05 -1.4270899821768734e-05 -1.4374150781031282e-06 3.389203053428032e-06 0.00017732944575855978 -1.3104114206013548e-06 4.0972870316576246e-05 2.4794259310464382e-06 2.7122919282528625e-05 -1.4058431032015523e-05 9.117638886785872e-06 1.4754688383140044e-05 0.000183697767648849 2.9468313738432197e-06 3.609272989384003e-05
15 -2.328082405143327e-05 1.5632707437571104e-06 1.2109299517515238e-05 3.3248989514038346e-05 -4.6783660971219356e-05 -0.00040218949695523343 -1.3913311456496233e-05 -1.0065060456080742e-05 -1.2728331978318178e-05 -8.632891459513443e-06 1.7776136486431683e-06 -1.658728793662558e-05 -1.1705176520061943e-05 2.9468313738432197e-06 0.0002657033943099241 -1.2514548163763332e-05
16 9.01335363291182e-05 -2.0852223979552967e-06 2.1784096897068196e-05 5.2160140467368645e-06 2.08444641591657e-05 1.7741217515552816e-05 3.970030737163412e-05 -2.9570867824696194e-06 9.378991879578857e-06 1.3694997201237113e-06 6.289332511191709e-06 -4.824617264881923e-06 4.564182942363125e-07 3.609272989384003e-05 -1.2514548163763332e-05 0.00010500126156937438;
end;
