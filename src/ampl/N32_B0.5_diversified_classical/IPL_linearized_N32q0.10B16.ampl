
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
printf: "{ ""solution"": [%d", x[1] > "results/N32_B0.5_diversified_classical/IPL_linearized_N32q0.10B16_solution.json";
printf{i in 2..n}: ",%d", x[i] >> "results/N32_B0.5_diversified_classical/IPL_linearized_N32q0.10B16_solution.json";
printf: "]}" >> "results/N32_B0.5_diversified_classical/IPL_linearized_N32q0.10B16_solution.json";

#data:
data;

param n := 32;
param q := 0.1;
param B := 16;
param mu :=
1 0.004812879505694767
2 0.0012413811435072974
3 0.004567241032979963
4 0.010550765493937225
5 0.004724013322079212
6 0.002810252728303192
7 -0.0013884619210636495
8 0.0039632964867238
9 -0.005680512224928658
10 -0.0034895856313666264
11 -0.0051409824408024715
12 0.013362692183484043
13 0.0031722264919331554
14 -8.374399193094018e-05
15 0.0014255183762210354
16 0.0024128250433705254
17 -0.005472774301225841
18 -0.00794422148720399
19 0.008173570998685747
20 -0.0020689890031257594
21 0.001591944306613502
22 0.002985494852985027
23 0.009384723254722543
24 0.003690222208681965
25 0.003449547641240669
26 0.010328491692584273
27 0.003481382261382987
28 0.0019680249296071873
29 0.010972747009739598
30 -0.0026733388930936576
31 0.0041740568660424745
32 0.006048248115296034;
param sigma : 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 :=
1 0.00012783854604719318 6.390184454143507e-05 3.218516658938484e-05 -4.3571681303076176e-06 8.478065387307667e-06 4.193082661671594e-06 2.4703680720902624e-05 -1.0963322835240301e-05 9.236109961125374e-06 3.334252237900747e-05 -2.1982588365361088e-05 -6.344428424303988e-05 -7.735507429640366e-06 1.8867755376689544e-05 -6.628658125301482e-05 -2.2337428445423494e-05 6.795483792499784e-05 4.4196105615720395e-05 -4.968856210793319e-06 4.283976938920823e-05 1.532094740438731e-05 1.8641890709905568e-05 3.921071307691671e-06 -3.408722221587963e-05 8.591413563001294e-07 -4.3469548241941205e-05 -1.8505049664681896e-05 4.2079651270960905e-08 -5.374525842324437e-05 3.2162476391289353e-06 1.6456414580871603e-06 8.882333008125972e-06
2 6.390184454143507e-05 0.00039815838070244295 8.350637710971311e-06 7.546348137935311e-06 -0.00014816573264495804 4.293487101724575e-05 -1.0961706253698246e-06 3.094075154265928e-05 -6.27908023919587e-06 -3.909542452718369e-05 7.780054727893221e-05 7.322347869645779e-05 4.990390608565379e-05 -1.7139586148529168e-05 -4.5016206091110625e-05 -1.6639299624151913e-05 5.064858985610969e-05 1.3941039862081935e-05 0.00015930702471086744 7.72578758326457e-06 -4.877546665117353e-06 0.00010698929684199042 7.217099518211848e-05 2.8317836239054653e-05 5.242984416193746e-05 5.442866322850417e-05 -4.948344356726278e-05 -9.432620621962512e-05 -8.416092320288576e-06 4.553796113138079e-05 5.54129775335351e-05 -7.870160554661752e-05
3 3.218516658938484e-05 8.350637710971311e-06 0.0002252613951075537 -7.686729384712934e-05 -1.3137227961109768e-05 1.355117297902987e-05 -2.0155506681433222e-05 -4.929450641707957e-05 -4.390209360553829e-05 -2.0455345101515388e-05 -8.446793639692546e-06 -7.763190776522298e-05 4.091047539547554e-05 2.9596339091534236e-06 -0.00011769689738271079 1.2058102004171032e-05 -1.252508154998813e-05 1.746871525260353e-05 -0.00010585417862669516 6.953094101314396e-07 2.1216608736488776e-05 -2.1172832605395097e-05 -2.8769428298257424e-05 3.6924093852270972e-06 9.118280562390074e-06 9.541850899988328e-06 -1.8597482419882774e-05 -8.794665771940378e-06 0.00014206242434547378 -5.7716534386221364e-05 -1.5071188229808759e-05 0.00022390501837656312
4 -4.3571681303076176e-06 7.546348137935311e-06 -7.686729384712934e-05 0.0007838373304778114 -3.81156436351286e-05 -2.0727493487016974e-05 0.00011633908293166044 0.00010452632163701513 0.00011636853240781814 6.632653133728766e-05 -1.0968111475670228e-05 9.480214817562184e-06 -0.00022320040913294882 6.0289955808101955e-05 9.030370010901764e-05 5.61765680424631e-06 3.591891310050386e-05 8.674457490896945e-05 -0.00013950805829380128 -0.00011734999733105646 8.102222465889255e-06 0.00020123730075291685 8.225641055185115e-05 -0.00015807230244485682 4.4484395364370274e-05 2.5322885198444732e-05 1.3305606338980017e-05 -1.2966450452199486e-05 9.600732352737591e-06 -5.0382031413568076e-05 -3.327175677633378e-05 -1.8793704171453414e-05
5 8.478065387307667e-06 -0.00014816573264495804 -1.3137227961109768e-05 -3.81156436351286e-05 0.0001908633591917876 3.6444245019940957e-06 5.5499367090686765e-05 -3.375304757984739e-05 6.536278025995235e-05 2.3018085717012754e-05 9.527203726763013e-06 -4.227119934921238e-05 8.46797835447177e-06 6.668452820898125e-05 4.8298781491233025e-05 -2.3917244083299367e-05 5.550107781424789e-05 5.340654421125065e-05 -1.7791512073568234e-05 4.085634589736521e-05 8.44139304394819e-06 -2.324597027450727e-05 -2.4490312754597317e-05 -3.899785544819372e-06 5.317219353195382e-06 -2.64541153756087e-05 1.908430355659105e-05 9.756123150572814e-05 3.6163951917076244e-05 3.422341570836849e-05 1.8669048597242081e-06 2.8214867557391596e-05
6 4.193082661671594e-06 4.293487101724575e-05 1.355117297902987e-05 -2.0727493487016974e-05 3.6444245019940957e-06 0.00012563110273737892 1.2882557652338489e-05 1.960856677628416e-06 -2.0549554287477736e-05 -3.403329583606423e-05 -9.931857402693039e-05 -0.00010564048529014085 4.035549296501542e-06 -8.28792666433172e-06 7.797762488705337e-05 2.854329963616563e-05 -1.6497375055239727e-06 -4.997929543197725e-07 6.803200867934919e-05 2.7231570502481818e-05 7.197943700597227e-06 -2.151923127283112e-05 -4.252712641389697e-05 1.652887014782842e-05 2.1418382300989813e-05 5.624715144000436e-05 -5.397497004420322e-06 2.2687073382615897e-05 1.823513872641791e-05 -0.00016470115337566032 -1.094870917593872e-05 3.3248989514038346e-05
7 2.4703680720902624e-05 -1.0961706253698246e-06 -2.0155506681433222e-05 0.00011633908293166044 5.5499367090686765e-05 1.2882557652338489e-05 0.0004289102188618431 7.574009472543441e-05 3.731051492706135e-05 0.0002851322066333869 3.215789783128798e-05 -3.3089272137892104e-05 1.4049435977417007e-05 7.979212368663542e-05 4.569202910245508e-05 -2.8519793509664656e-05 -2.1015651818042228e-06 -7.169580304028775e-05 4.875350029137355e-05 -3.1869444615338954e-05 -1.62319283220985e-06 -8.925654481910505e-05 6.184232220535708e-05 3.5073566848024473e-06 -3.95409694252256e-06 0.00010616450606903315 -3.974870581583508e-05 7.439286245800377e-06 4.9227239469828314e-05 0.00011752560621108525 -0.00011171521286225776 3.099449943856585e-06
8 -1.0963322835240301e-05 3.094075154265928e-05 -4.929450641707957e-05 0.00010452632163701513 -3.375304757984739e-05 1.960856677628416e-06 7.574009472543441e-05 0.0001712906474828772 5.9126130839344665e-05 4.331956096407131e-06 8.3254634163259e-06 -1.7715609166133117e-05 -2.8834718030624503e-05 5.2415291622363885e-06 2.173333355490059e-05 -1.02663586502739e-05 -0.00010764919799384942 -9.449484572362329e-06 -5.7154192298934794e-05 -1.2581223504438019e-05 2.508135059428383e-06 -7.685495313079255e-05 1.7428633361164997e-05 -3.0922224196652088e-06 -1.5971864195014526e-07 5.520168486447394e-06 1.8052309846896793e-05 2.5082759834351744e-05 -6.5231451763386e-05 2.8539385841062523e-06 -5.40909363711036e-06 -4.0405195277695764e-05
9 9.236109961125374e-06 -6.27908023919587e-06 -4.390209360553829e-05 0.00011636853240781814 6.536278025995235e-05 -2.0549554287477736e-05 3.731051492706135e-05 5.9126130839344665e-05 0.0005068721870250926 -1.1887870233211458e-05 0.00011757972759911012 -0.00015106322523677712 3.585532946874078e-07 2.8337540937205795e-05 2.012577561036223e-06 -5.345162219565765e-05 7.24325136015738e-05 7.13215412706684e-05 3.9944068624802295e-05 4.961181514909312e-06 5.914261000141881e-06 0.00010630612572363487 -4.5832216341763674e-05 1.916311268958613e-05 -1.2284884014318068e-05 -3.56835983833384e-05 -3.0940083245698704e-05 5.2998091683453835e-05 -0.0003632751682268513 1.3155895372993672e-05 1.234840764627254e-05 -4.9891603127681804e-05
10 3.334252237900747e-05 -3.909542452718369e-05 -2.0455345101515388e-05 6.632653133728766e-05 2.3018085717012754e-05 -3.403329583606423e-05 0.0002851322066333869 4.331956096407131e-06 -1.1887870233211458e-05 0.00039116254022259004 6.741599335813846e-06 8.599549874990835e-05 -2.516847697778613e-05 5.1786609996167065e-05 -6.860877353993185e-06 8.772551636854522e-06 -2.7330787450803396e-05 -3.4927050945910325e-05 -9.016116879323378e-05 2.0749214914981584e-05 -6.427248277329746e-05 2.1945158846554404e-06 0.00011453990118117311 -5.443531474441632e-06 -2.6367427888831812e-05 3.554019032962733e-05 -4.7457165835877525e-05 -3.485917575026927e-05 0.00012502688231140455 4.710077370743251e-05 -2.8118475069135937e-05 -1.6398952393861114e-05
11 -2.1982588365361088e-05 7.780054727893221e-05 -8.446793639692546e-06 -1.0968111475670228e-05 9.527203726763013e-06 -9.931857402693039e-05 3.215789783128798e-05 8.3254634163259e-06 0.00011757972759911012 6.741599335813846e-06 0.0009195113407992645 7.761679782694334e-05 6.52378249523549e-05 -2.670681815393609e-05 5.865334803899333e-05 1.6174119011946987e-05 5.516748845682365e-05 0.00021442067484087892 -4.479627432760548e-05 -5.597381318501396e-05 -5.6881680374724306e-05 8.435574828820576e-05 5.680240197273569e-05 4.402159878632541e-05 2.1146834981058644e-05 8.933693925107515e-05 -3.5441100704066503e-06 7.289580392695719e-05 -3.713031952908181e-05 0.0007500399989668408 5.710651601487566e-05 -5.2831692049928814e-05
12 -6.344428424303988e-05 7.322347869645779e-05 -7.763190776522298e-05 9.480214817562184e-06 -4.227119934921238e-05 -0.00010564048529014085 -3.3089272137892104e-05 -1.7715609166133117e-05 -0.00015106322523677712 8.599549874990835e-05 7.761679782694334e-05 0.0013074436528422461 5.540977745087502e-05 2.3436091696964672e-05 -1.573476147405205e-05 1.950377351352061e-05 -3.834921627652912e-05 -0.00015892188213978046 2.2612440032798573e-05 2.9918704780633024e-05 -0.00011156664239976624 1.442853367308931e-05 0.0005972416857464585 7.059423689117838e-05 5.444321834708401e-07 -0.00012467002996017213 0.00027991281908280386 -5.627198415113733e-06 0.00011829306517732635 0.0001243295773951196 2.1649532084037785e-05 -0.00012772217337938448
13 -7.735507429640366e-06 4.990390608565379e-05 4.091047539547554e-05 -0.00022320040913294882 8.46797835447177e-06 4.035549296501542e-06 1.4049435977417007e-05 -2.8834718030624503e-05 3.585532946874078e-07 -2.516847697778613e-05 6.52378249523549e-05 5.540977745087502e-05 0.00013554312422375586 -2.409883229007024e-05 -1.9049759198533836e-05 -3.317749488324907e-05 1.1099709931194196e-05 -1.2475874008442966e-06 0.00010018078497899155 1.0082142650392182e-06 1.63535579098064e-05 -3.863071144848325e-05 2.597172050628915e-05 9.956402802109441e-05 -2.193805191935066e-06 3.507778700464834e-05 -2.442493130813975e-06 -5.822714254497548e-06 1.344049472980509e-05 5.1580775722134576e-05 2.0031812051627015e-06 2.4078780226382212e-05
14 1.8867755376689544e-05 -1.7139586148529168e-05 2.9596339091534236e-06 6.0289955808101955e-05 6.668452820898125e-05 -8.28792666433172e-06 7.979212368663542e-05 5.2415291622363885e-06 2.8337540937205795e-05 5.1786609996167065e-05 -2.670681815393609e-05 2.3436091696964672e-05 -2.409883229007024e-05 0.00010320092117720632 3.5427749602045517e-06 -1.3367596386287768e-05 0.0001333468580041211 -2.2132596997972844e-05 -0.0001688283699849431 2.532545501499621e-05 1.9465347641555744e-06 -2.07929614916336e-05 -4.263208381906459e-07 -3.207504901427718e-05 3.730294260281797e-07 -1.404037336648915e-05 8.217967481751203e-06 3.103788607427295e-05 2.530783452050757e-06 8.076933664849317e-06 -7.22382689053474e-06 9.360629852344783e-06
15 -6.628658125301482e-05 -4.5016206091110625e-05 -0.00011769689738271079 9.030370010901764e-05 4.8298781491233025e-05 7.797762488705337e-05 4.569202910245508e-05 2.173333355490059e-05 2.012577561036223e-06 -6.860877353993185e-06 5.865334803899333e-05 -1.573476147405205e-05 -1.9049759198533836e-05 3.5427749602045517e-06 0.0002715652157315371 -4.154457763990923e-06 1.707939510846885e-05 -1.756094027763745e-05 7.603747095673153e-05 4.439774076366576e-05 1.3215659023500518e-05 -1.4286396806158234e-05 -1.4337879947527184e-07 6.972971912829397e-06 1.9353388427617184e-05 0.00010173599265836993 2.444147118507489e-06 9.023548693886063e-05 8.988142037457894e-05 1.946578354439296e-05 8.980572351676767e-06 -5.981707721882436e-05
16 -2.2337428445423494e-05 -1.6639299624151913e-05 1.2058102004171032e-05 5.61765680424631e-06 -2.3917244083299367e-05 2.854329963616563e-05 -2.8519793509664656e-05 -1.02663586502739e-05 -5.345162219565765e-05 8.772551636854522e-06 1.6174119011946987e-05 1.950377351352061e-05 -3.317749488324907e-05 -1.3367596386287768e-05 -4.154457763990923e-06 0.00011401377367926525 -6.079364165761161e-06 2.916688045571332e-06 -0.00014445807720678895 -7.001724688253786e-06 -3.2450858174614163e-06 1.8116546020449385e-05 -4.066287784883164e-06 1.1875932575283182e-05 -6.078818801874059e-06 -8.38988620301279e-05 -4.4277847263805084e-06 1.709233776745721e-05 3.212998281467358e-05 4.195907491791583e-06 -7.88373812264854e-06 -5.662341977784868e-08
17 6.795483792499784e-05 5.064858985610969e-05 -1.252508154998813e-05 3.591891310050386e-05 5.550107781424789e-05 -1.6497375055239727e-06 -2.1015651818042228e-06 -0.00010764919799384942 7.24325136015738e-05 -2.7330787450803396e-05 5.516748845682365e-05 -3.834921627652912e-05 1.1099709931194196e-05 0.0001333468580041211 1.707939510846885e-05 -6.079364165761161e-06 0.0005291725122912217 3.1761495878756728e-06 -0.00025001485476330317 -6.076000301931078e-05 -2.926493379258338e-05 0.00013633209377298828 -5.737083422798219e-05 -6.111353513384214e-05 -5.1293031714461533e-05 -4.658862414081339e-06 -5.38987090002726e-05 1.5518311991367558e-05 -0.00015083626826770767 4.657084887104885e-05 -1.1144127297742527e-06 -3.7201810209524815e-05
18 4.4196105615720395e-05 1.3941039862081935e-05 1.746871525260353e-05 8.674457490896945e-05 5.340654421125065e-05 -4.997929543197725e-07 -7.169580304028775e-05 -9.449484572362329e-06 7.13215412706684e-05 -3.4927050945910325e-05 0.00021442067484087892 -0.00015892188213978046 -1.2475874008442966e-06 -2.2132596997972844e-05 -1.756094027763745e-05 2.916688045571332e-06 3.1761495878756728e-06 0.0002999103425384394 -7.227433188127687e-05 -9.89847823200524e-06 2.832805033175132e-05 3.053240208946137e-05 -5.0999940845741956e-05 1.1768723507678278e-05 3.814922502642301e-05 6.015879415662294e-05 9.822333253723835e-06 -8.979994859070611e-06 3.9875823143625314e-07 0.00011258079130440607 8.118842054397728e-05 1.490145188015418e-05
19 -4.968856210793319e-06 0.00015930702471086744 -0.00010585417862669516 -0.00013950805829380128 -1.7791512073568234e-05 6.803200867934919e-05 4.875350029137355e-05 -5.7154192298934794e-05 3.9944068624802295e-05 -9.016116879323378e-05 -4.479627432760548e-05 2.2612440032798573e-05 0.00010018078497899155 -0.0001688283699849431 7.603747095673153e-05 -0.00014445807720678895 -0.00025001485476330317 -7.227433188127687e-05 0.0012576884026732898 -7.414840887701117e-05 1.3402975366752171e-05 2.301626891946778e-06 2.010851385636685e-05 4.246183596240535e-05 1.0717271779261633e-05 -1.2285474673210562e-05 -6.44913319236311e-05 -6.0524622922226596e-05 -3.5944969029312555e-05 1.934344191214478e-05 3.789847476900295e-05 -0.00010193527530606289
20 4.283976938920823e-05 7.72578758326457e-06 6.953094101314396e-07 -0.00011734999733105646 4.085634589736521e-05 2.7231570502481818e-05 -3.1869444615338954e-05 -1.2581223504438019e-05 4.961181514909312e-06 2.0749214914981584e-05 -5.597381318501396e-05 2.9918704780633024e-05 1.0082142650392182e-06 2.532545501499621e-05 4.439774076366576e-05 -7.001724688253786e-06 -6.076000301931078e-05 -9.89847823200524e-06 -7.414840887701117e-05 0.0001978265302087339 5.73351137581276e-05 -7.587786020923352e-05 1.379289779963425e-05 3.434154335744738e-05 4.158961599143813e-05 -4.249085978311533e-05 2.9855550980113762e-05 5.690666523192339e-05 5.283930989742292e-05 -2.7468018846895245e-05 3.7207703694198376e-05 -6.833654990238001e-06
21 1.532094740438731e-05 -4.877546665117353e-06 2.1216608736488776e-05 8.102222465889255e-06 8.44139304394819e-06 7.197943700597227e-06 -1.62319283220985e-06 2.508135059428383e-06 5.914261000141881e-06 -6.427248277329746e-05 -5.6881680374724306e-05 -0.00011156664239976624 1.63535579098064e-05 1.9465347641555744e-06 1.3215659023500518e-05 -3.2450858174614163e-06 -2.926493379258338e-05 2.832805033175132e-05 1.3402975366752171e-05 5.73351137581276e-05 0.0001327758703641015 -9.592085246797039e-05 -6.777270376784144e-05 4.349317640197016e-05 2.3633256311975973e-05 -9.098137360833816e-05 -1.0052497948635565e-05 2.4576835452052865e-05 2.4330704637025932e-05 1.5897406798904367e-05 8.309942226339182e-06 2.5957249273421754e-05
22 1.8641890709905568e-05 0.00010698929684199042 -2.1172832605395097e-05 0.00020123730075291685 -2.324597027450727e-05 -2.151923127283112e-05 -8.925654481910505e-05 -7.685495313079255e-05 0.00010630612572363487 2.1945158846554404e-06 8.435574828820576e-05 1.442853367308931e-05 -3.863071144848325e-05 -2.07929614916336e-05 -1.4286396806158234e-05 1.8116546020449385e-05 0.00013633209377298828 3.053240208946137e-05 2.301626891946778e-06 -7.587786020923352e-05 -9.592085246797039e-05 0.0004130993409402021 7.162504546353535e-05 -4.9490277589789156e-05 1.399517614371389e-05 -2.8058965972645915e-05 -7.908477025580824e-05 -1.780226917817453e-05 -2.0467793457705012e-05 -2.801268043828612e-05 1.4289285070404169e-05 -3.885039406313371e-05
23 3.921071307691671e-06 7.217099518211848e-05 -2.8769428298257424e-05 8.225641055185115e-05 -2.4490312754597317e-05 -4.252712641389697e-05 6.184232220535708e-05 1.7428633361164997e-05 -4.5832216341763674e-05 0.00011453990118117311 5.680240197273569e-05 0.0005972416857464585 2.597172050628915e-05 -4.263208381906459e-07 -1.4337879947527184e-07 -4.066287784883164e-06 -5.737083422798219e-05 -5.0999940845741956e-05 2.010851385636685e-05 1.379289779963425e-05 -6.777270376784144e-05 7.162504546353535e-05 0.00033605664990136574 2.947310155250655e-05 1.5945971380810225e-05 -5.7363134641887005e-06 0.00011466925926822808 -4.6012152225720975e-06 9.262135707180417e-05 5.3411743678505104e-05 -1.0885929707859999e-05 -4.705286913251131e-05
24 -3.408722221587963e-05 2.8317836239054653e-05 3.6924093852270972e-06 -0.00015807230244485682 -3.899785544819372e-06 1.652887014782842e-05 3.5073566848024473e-06 -3.0922224196652088e-06 1.916311268958613e-05 -5.443531474441632e-06 4.402159878632541e-05 7.059423689117838e-05 9.956402802109441e-05 -3.207504901427718e-05 6.972971912829397e-06 1.1875932575283182e-05 -6.111353513384214e-05 1.1768723507678278e-05 4.246183596240535e-05 3.434154335744738e-05 4.349317640197016e-05 -4.9490277589789156e-05 2.947310155250655e-05 0.00012418385257246628 1.0811335348932407e-05 -3.3089613597100675e-05 1.0235513328318433e-05 7.439198492589459e-06 7.213298800699362e-06 2.357307035659715e-05 1.491939845874422e-05 -8.7707205745241e-06
25 8.591413563001294e-07 5.242984416193746e-05 9.118280562390074e-06 4.4484395364370274e-05 5.317219353195382e-06 2.1418382300989813e-05 -3.95409694252256e-06 -1.5971864195014526e-07 -1.2284884014318068e-05 -2.6367427888831812e-05 2.1146834981058644e-05 5.444321834708401e-07 -2.193805191935066e-06 3.730294260281797e-07 1.9353388427617184e-05 -6.078818801874059e-06 -5.1293031714461533e-05 3.814922502642301e-05 1.0717271779261633e-05 4.158961599143813e-05 2.3633256311975973e-05 1.399517614371389e-05 1.5945971380810225e-05 1.0811335348932407e-05 5.0529231535626226e-05 4.746631512074776e-05 2.0834076024340595e-05 2.2054986354605412e-07 5.4802653096912205e-05 6.251189925123773e-06 4.103592529640759e-06 9.190282691245294e-06
26 -4.3469548241941205e-05 5.442866322850417e-05 9.541850899988328e-06 2.5322885198444732e-05 -2.64541153756087e-05 5.624715144000436e-05 0.00010616450606903315 5.520168486447394e-06 -3.56835983833384e-05 3.554019032962733e-05 8.933693925107515e-05 -0.00012467002996017213 3.507778700464834e-05 -1.404037336648915e-05 0.00010173599265836993 -8.38988620301279e-05 -4.658862414081339e-06 6.015879415662294e-05 -1.2285474673210562e-05 -4.249085978311533e-05 -9.098137360833816e-05 -2.8058965972645915e-05 -5.7363134641887005e-06 -3.3089613597100675e-05 4.746631512074776e-05 0.000549520822084412 4.12201085913294e-05 -9.840791237568747e-05 4.9297408079584677e-05 -2.7444879614509963e-05 -7.373157240408527e-05 3.3869198503854884e-05
27 -1.8505049664681896e-05 -4.948344356726278e-05 -1.8597482419882774e-05 1.3305606338980017e-05 1.908430355659105e-05 -5.397497004420322e-06 -3.974870581583508e-05 1.8052309846896793e-05 -3.0940083245698704e-05 -4.7457165835877525e-05 -3.5441100704066503e-06 0.00027991281908280386 -2.442493130813975e-06 8.217967481751203e-06 2.444147118507489e-06 -4.4277847263805084e-06 -5.38987090002726e-05 9.822333253723835e-06 -6.44913319236311e-05 2.9855550980113762e-05 -1.0052497948635565e-05 -7.908477025580824e-05 0.00011466925926822808 1.0235513328318433e-05 2.0834076024340595e-05 4.12201085913294e-05 0.0001407410044027519 1.1802097010522565e-05 -3.982212577737822e-05 -1.4634465330940758e-05 -2.0147117856130575e-05 -1.1705176520061943e-05
28 4.2079651270960905e-08 -9.432620621962512e-05 -8.794665771940378e-06 -1.2966450452199486e-05 9.756123150572814e-05 2.2687073382615897e-05 7.439286245800377e-06 2.5082759834351744e-05 5.2998091683453835e-05 -3.485917575026927e-05 7.289580392695719e-05 -5.627198415113733e-06 -5.822714254497548e-06 3.103788607427295e-05 9.023548693886063e-05 1.709233776745721e-05 1.5518311991367558e-05 -8.979994859070611e-06 -6.0524622922226596e-05 5.690666523192339e-05 2.4576835452052865e-05 -1.780226917817453e-05 -4.6012152225720975e-06 7.439198492589459e-06 2.2054986354605412e-07 -9.840791237568747e-05 1.1802097010522565e-05 0.00013629672688672095 1.8651679175829134e-05 6.048449534918459e-05 1.6851407690601107e-06 2.471182751717504e-05
29 -5.374525842324437e-05 -8.416092320288576e-06 0.00014206242434547378 9.600732352737591e-06 3.6163951917076244e-05 1.823513872641791e-05 4.9227239469828314e-05 -6.5231451763386e-05 -0.0003632751682268513 0.00012502688231140455 -3.713031952908181e-05 0.00011829306517732635 1.344049472980509e-05 2.530783452050757e-06 8.988142037457894e-05 3.212998281467358e-05 -0.00015083626826770767 3.9875823143625314e-07 -3.5944969029312555e-05 5.283930989742292e-05 2.4330704637025932e-05 -2.0467793457705012e-05 9.262135707180417e-05 7.213298800699362e-06 5.4802653096912205e-05 4.9297408079584677e-05 -3.982212577737822e-05 1.8651679175829134e-05 0.0006924053806845673 1.2760320605154519e-05 5.9250722062559846e-05 0.0001912687819828501
30 3.2162476391289353e-06 4.553796113138079e-05 -5.7716534386221364e-05 -5.0382031413568076e-05 3.422341570836849e-05 -0.00016470115337566032 0.00011752560621108525 2.8539385841062523e-06 1.3155895372993672e-05 4.710077370743251e-05 0.0007500399989668408 0.0001243295773951196 5.1580775722134576e-05 8.076933664849317e-06 1.946578354439296e-05 4.195907491791583e-06 4.657084887104885e-05 0.00011258079130440607 1.934344191214478e-05 -2.7468018846895245e-05 1.5897406798904367e-05 -2.801268043828612e-05 5.3411743678505104e-05 2.357307035659715e-05 6.251189925123773e-06 -2.7444879614509963e-05 -1.4634465330940758e-05 6.048449534918459e-05 1.2760320605154519e-05 0.0008250935099966719 2.7084575008201488e-05 -0.00011906858854583049
31 1.6456414580871603e-06 5.54129775335351e-05 -1.5071188229808759e-05 -3.327175677633378e-05 1.8669048597242081e-06 -1.094870917593872e-05 -0.00011171521286225776 -5.40909363711036e-06 1.234840764627254e-05 -2.8118475069135937e-05 5.710651601487566e-05 2.1649532084037785e-05 2.0031812051627015e-06 -7.22382689053474e-06 8.980572351676767e-06 -7.88373812264854e-06 -1.1144127297742527e-06 8.118842054397728e-05 3.789847476900295e-05 3.7207703694198376e-05 8.309942226339182e-06 1.4289285070404169e-05 -1.0885929707859999e-05 1.491939845874422e-05 4.103592529640759e-06 -7.373157240408527e-05 -2.0147117856130575e-05 1.6851407690601107e-06 5.9250722062559846e-05 2.7084575008201488e-05 0.00011731284381206643 -2.93748914811189e-05
32 8.882333008125972e-06 -7.870160554661752e-05 0.00022390501837656312 -1.8793704171453414e-05 2.8214867557391596e-05 3.3248989514038346e-05 3.099449943856585e-06 -4.0405195277695764e-05 -4.9891603127681804e-05 -1.6398952393861114e-05 -5.2831692049928814e-05 -0.00012772217337938448 2.4078780226382212e-05 9.360629852344783e-06 -5.981707721882436e-05 -5.662341977784868e-08 -3.7201810209524815e-05 1.490145188015418e-05 -0.00010193527530606289 -6.833654990238001e-06 2.5957249273421754e-05 -3.885039406313371e-05 -4.705286913251131e-05 -8.7707205745241e-06 9.190282691245294e-06 3.3869198503854884e-05 -1.1705176520061943e-05 2.471182751717504e-05 0.0001912687819828501 -0.00011906858854583049 -2.93748914811189e-05 0.0002657033943099241;
end;
