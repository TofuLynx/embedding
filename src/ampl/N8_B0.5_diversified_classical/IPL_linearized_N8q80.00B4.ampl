
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
printf: "{ ""solution"": [%d", x[1] > "results/N8_B0.5_diversified_classical/IPL_linearized_N8q80.00B4_solution.json";
printf{i in 2..n}: ",%d", x[i] >> "results/N8_B0.5_diversified_classical/IPL_linearized_N8q80.00B4_solution.json";
printf: "]}" >> "results/N8_B0.5_diversified_classical/IPL_linearized_N8q80.00B4_solution.json";

#data:
data;

param n := 8;
param q := 80;
param B := 4;
param mu :=
1 0.002810252728303192
2 0.0047540919905030895
3 0.0031722264919331554
4 -0.00794422148720399
5 0.0019376015193928453
6 0.009227286384188498
7 -0.00044328625817759425
8 0.010972747009739598;
param sigma : 1 2 3 4 5 6 7 8 :=
1 0.00012563110273737892 -8.909305989011502e-07 4.035549296501542e-06 -4.997929543197725e-07 4.177070177407825e-06 1.697808917586943e-05 -5.9070756037873564e-05 1.823513872641791e-05
2 -8.909305989011502e-07 0.00017398520295699944 -3.1614752794209478e-06 2.002518417574823e-05 3.5583422853452276e-06 8.266098226653721e-06 1.1205390914003232e-06 3.266677903436656e-07
3 4.035549296501542e-06 -3.1614752794209478e-06 0.00013554312422375586 -1.2475874008442966e-06 2.068946219590446e-05 2.717358114312709e-05 6.079908683630489e-06 1.344049472980509e-05
4 -4.997929543197725e-07 2.002518417574823e-05 -1.2475874008442966e-06 0.0002999103425384394 1.0338154694112974e-05 4.132882151856632e-05 -2.3490550598448796e-05 3.9875823143625314e-07
5 4.177070177407825e-06 3.5583422853452276e-06 2.068946219590446e-05 1.0338154694112974e-05 9.638255532413726e-05 6.625591143502e-06 -2.281260348319167e-06 7.349057496656096e-06
6 1.697808917586943e-05 8.266098226653721e-06 2.717358114312709e-05 4.132882151856632e-05 6.625591143502e-06 0.0004806487678385114 -2.5123654169440663e-07 -5.262085634162762e-05
7 -5.9070756037873564e-05 1.1205390914003232e-06 6.079908683630489e-06 -2.3490550598448796e-05 -2.281260348319167e-06 -2.5123654169440663e-07 0.0004703322293671103 -2.331258526282567e-06
8 1.823513872641791e-05 3.266677903436656e-07 1.344049472980509e-05 3.9875823143625314e-07 7.349057496656096e-06 -5.262085634162762e-05 -2.331258526282567e-06 0.0006924053806845673;
end;
