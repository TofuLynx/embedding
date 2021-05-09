
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
printf: "{ ""solution"": [%d", x[1] > "results/N8_B0.5_correlated_classical/IPL_linearized_N8q0.20B4_solution.json";
printf{i in 2..n}: ",%d", x[i] >> "results/N8_B0.5_correlated_classical/IPL_linearized_N8q0.20B4_solution.json";
printf: "]}" >> "results/N8_B0.5_correlated_classical/IPL_linearized_N8q0.20B4_solution.json";

#data:
data;

param n := 8;
param q := 0.2;
param B := 4;
param mu :=
1 0.004930508169410952
2 0.004904720212679842
3 0.004999188109115904
4 0.005804769673636323
5 0.00313721804173821
6 0.0031623412477083334
7 0.0039347307922897035
8 0.003118730295240596;
param sigma : 1 2 3 4 5 6 7 8 :=
1 0.00041790196172124375 0.0003562682797754523 0.0003393995045025121 0.00035347765738953044 0.00030493375439300083 0.0003327551703717083 0.0003490009375368679 0.0004082626802316255
2 0.0003562682797754523 0.0003489798965420522 0.0003140774044815816 0.0003036729933490082 0.0002571466529302512 0.0002771867647563981 0.0003087755515246635 0.0003453816308139265
3 0.0003393995045025121 0.0003140774044815816 0.0003030187195647059 0.00028861394611659214 0.0002537114974480425 0.0002734807338399013 0.0002934333331072113 0.00034586785488977613
4 0.00035347765738953044 0.0003036729933490082 0.00028861394611659214 0.0003188028505144802 0.00026463723944038296 0.0002849784486319544 0.0003007882429643764 0.00033578633604790025
5 0.00030493375439300083 0.0002571466529302512 0.0002537114974480425 0.00026463723944038296 0.0002654104855232494 0.00028021304044806067 0.0002565613510833626 0.00031765610854129903
6 0.0003327551703717083 0.0002771867647563981 0.0002734807338399013 0.0002849784486319544 0.00028021304044806067 0.00030592342575556724 0.0002723058688404718 0.0003441472742880822
7 0.0003490009375368679 0.0003087755515246635 0.0002934333331072113 0.0003007882429643764 0.0002565613510833626 0.0002723058688404718 0.0003414925352983394 0.000357220798165101
8 0.0004082626802316255 0.0003453816308139265 0.00034586785488977613 0.00033578633604790025 0.00031765610854129903 0.0003441472742880822 0.000357220798165101 0.0004611551806832894;
end;
