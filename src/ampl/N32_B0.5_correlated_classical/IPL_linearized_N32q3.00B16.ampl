
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
printf: "{ ""solution"": [%d", x[1] > "results/N32_B0.5_correlated_classical/IPL_linearized_N32q3.00B16_solution.json";
printf{i in 2..n}: ",%d", x[i] >> "results/N32_B0.5_correlated_classical/IPL_linearized_N32q3.00B16_solution.json";
printf: "]}" >> "results/N32_B0.5_correlated_classical/IPL_linearized_N32q3.00B16_solution.json";

#data:
data;

param n := 32;
param q := 3.0;
param B := 16;
param mu :=
1 0.0042039118869786115
2 0.004822962629451116
3 0.002782117985456717
4 0.002252224798986269
5 0.005433162121981472
6 0.004930508169410952
7 0.004904720212679842
8 0.004505304791820225
9 0.004729979521209243
10 0.005502035871810101
11 0.0024955176907569656
12 0.004999188109115904
13 0.006710217326899354
14 0.005837598073389438
15 -0.001202570182191698
16 0.005804769673636323
17 0.004369429370597732
18 0.005163113398043234
19 0.004841736304506489
20 0.004156159290747885
21 0.00313721804173821
22 0.0031623412477083334
23 0.003740902033724125
24 0.005404942027079224
25 0.005890416289445738
26 0.0039347307922897035
27 0.0037070863316585323
28 0.0014230506708146685
29 0.004580670837466605
30 0.00353148916217389
31 0.003561234066557778
32 0.003118730295240596;
param sigma : 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 :=
1 9.353452500303818e-05 0.00011289825285093624 0.00011120110897120671 0.0001105370057927205 0.00011473481649252813 0.00015378702470258268 0.00011863868735304792 0.00010004918968261081 0.00018317634297876123 0.00010998213608240433 6.550401580615046e-05 0.00011432131514060219 7.097143801861302e-05 0.00010555586258523555 0.00016919325082122863 0.00012995970994020292 7.849114300247552e-05 0.00014704292112797322 0.00018483179205244286 0.00011965780223918792 0.00012572021143145054 0.00013031706797864883 0.00010684916383785383 0.00012060372187681276 0.00010974246555871224 0.000130181694487951 7.437646985487893e-05 0.0001110138489538414 0.00015556172942513195 0.00013384441125575283 0.00011099182051105849 0.00016897154858807077
2 0.00011289825285093624 0.00024191305013014362 0.0001911425278279762 0.00017133617060902047 9.296541269670851e-05 0.0002282706766679593 0.0001919667023404322 0.00013235049923778335 0.00019760774949086223 0.00013014149211917556 0.00010763357046235393 0.00018940778299272236 8.121602599561605e-05 0.00017535963169080927 0.00024261960985491374 0.00020223963129463747 0.00011196747168237277 0.00023259912366002154 0.00021100790666772252 0.00018137160523063698 0.00017689608720285833 0.0001751961388630822 0.00014751873029590152 0.0001845088035044107 0.00015694200645792686 0.0001988202284731237 0.00010923975070528796 0.0002045872398081749 0.0002037578338543944 0.00018760558275883807 0.0001579629592576025 0.00023176019502991904
3 0.00011120110897120671 0.0001911425278279762 0.0002362751262683192 0.00018389639675702146 0.00013168749058959717 0.0002789143209291271 0.0002557455803583558 0.00012617259241726512 0.00021308972716435363 0.0001386756206305927 9.048611276688558e-05 0.00023390349073193107 0.00010488557971707897 0.0001687933621203631 0.00026399765411761096 0.00023311631296020485 0.00010344711762262646 0.00021320728766666572 0.00021137882042008424 0.00017305792233786982 0.0002134826061422893 0.0002238442165080389 0.00014215462458406122 0.00023861780839862657 0.0001515305304294571 0.0002456366742983983 0.00011342532838929489 0.00025528614997495484 0.00018057966098076474 0.00019998412768631812 0.00021616360852042582 0.00027888001389912644
4 0.0001105370057927205 0.00017133617060902047 0.00018389639675702146 0.00020852484865061088 0.00014570320651739768 0.000260033112343605 0.00020384077694428498 0.00015217518779585195 0.00025288465765578436 0.00016712510308390806 0.00010463881167700424 0.00020330784402001223 0.00010373791953753782 0.00018956679035651746 0.00025562084295418575 0.00022675092572846853 9.572946379127901e-05 0.0002269223880630908 0.0002549738563163493 0.00016802885665378407 0.00020257935884611695 0.00022239069616531777 0.000147702561324356 0.00019618636306207503 0.00015580343479201518 0.00021230363213528718 0.0001358128465076442 0.0001902475862511304 0.0001986843549244611 0.00022801571063601155 0.0001600007856799341 0.00027033290749688794
5 0.00011473481649252813 9.296541269670851e-05 0.00013168749058959717 0.00014570320651739768 0.00024239237148982845 0.00024321542010354082 0.00018828156798710475 0.00016897766398859 0.00030294265951452134 0.00021220389560577688 8.53976936510665e-05 0.00017900676947934374 0.00015221765200279185 0.0001415440883852911 0.00027754764207087103 0.00020966219949710883 0.0001136634624535044 0.00017576753893894364 0.0002873172221714608 0.00013485468436956108 0.0001830861639539459 0.00020630878998184244 0.0001426517649204768 0.00016805545480379238 0.00013511438182374982 0.00019468003776003043 0.00011044550493658402 0.00015035548407445952 0.00017630754925443968 0.00021164729786833894 0.00015381731585977184 0.00024954783526763774
6 0.00015378702470258268 0.0002282706766679593 0.0002789143209291271 0.000260033112343605 0.00024321542010354082 0.00041790196172124375 0.0003562682797754523 0.0002171992715998619 0.00036141894150325363 0.00025508516264224863 0.00014223136766932474 0.0003393995045025121 0.00017726351371025195 0.00023386209845467068 0.00041149922282010645 0.00035347765738953044 0.00015022588824313728 0.00028804409972904186 0.0003508762668254702 0.00022913662959062582 0.00030493375439300083 0.0003327551703717083 0.0002165500830751404 0.00030834559436531225 0.00020722702345820596 0.0003490009375368679 0.0001757045727302617 0.0003207464533868036 0.0002598781813717423 0.0003171999097739343 0.0002686385356256879 0.0004082626802316255
7 0.00011863868735304792 0.0001919667023404322 0.0002557455803583558 0.00020384077694428498 0.00018828156798710475 0.0003562682797754523 0.0003489798965420522 0.00017127734168862637 0.00028465951913705326 0.00019514517909310325 0.00010597747510077656 0.0003140774044815816 0.00015466958614354415 0.0001860364915239402 0.00036153337401965464 0.0003036729933490082 0.00011485907386164338 0.00023235177817308386 0.00026721849792875406 0.00019046420126602346 0.0002571466529302512 0.0002771867647563981 0.00018711422751349234 0.0002737069490520482 0.00017467379001698548 0.0003087755515246635 0.00014003250628520842 0.000307914889842801 0.00020295265783686284 0.00024691792048764377 0.0002448859351735955 0.0003453816308139265
8 0.00010004918968261081 0.00013235049923778335 0.00012617259241726512 0.00015217518779585195 0.00016897766398859 0.0002171992715998619 0.00017127734168862637 0.00018621843070774894 0.0002832293810526911 0.00017473083544651243 9.480732860265419e-05 0.0001697040214683053 0.00010933863561251277 0.00014111607617557073 0.00025024926670104224 0.00019394969955357995 9.006530311984282e-05 0.0001766315011594577 0.00026371920113896967 0.0001392773199730587 0.00017264113397937592 0.00019581614125295028 0.00014225604982180892 0.00014068244288916704 0.00013147752378796067 0.00017409320739107396 9.532203840509743e-05 0.00014290979368788607 0.00016334897103716968 0.00019848255750229662 0.00010800772025786985 0.00022918568760843584
9 0.00018317634297876123 0.00019760774949086223 0.00021308972716435363 0.00025288465765578436 0.00030294265951452134 0.00036141894150325363 0.00028465951913705326 0.0002832293810526911 0.0005262804438589213 0.0003103039469617391 0.00014119892775857996 0.0002616993171789624 0.00020695824808124186 0.00023143407137089504 0.00044788174503134447 0.00031810018433517617 0.0001633825140987072 0.00030914666525273414 0.000509889820048385 0.0002398756246021114 0.00028192730354486623 0.0003138056170847041 0.0002524953268133542 0.0002440607089899772 0.00023000261185064574 0.00027668844538388773 0.00016930087483469123 0.00023882412731762232 0.0003132586822597423 0.00031240292481043085 0.00021166796081924387 0.0003660628382419269
10 0.00010998213608240433 0.00013014149211917556 0.0001386756206305927 0.00016712510308390806 0.00021220389560577688 0.00025508516264224863 0.00019514517909310325 0.00017473083544651243 0.0003103039469617391 0.0002342950098395051 9.239007580729953e-05 0.00018657152419501198 0.00014356020131905966 0.00014927623701849971 0.0003070976798408174 0.00023813255473841162 0.00011934562657250669 0.0001888568081309793 0.0003072334307171255 0.00013610620763797145 0.0001911567912243893 0.00020769888397045234 0.00014082617368767292 0.00016595346187308794 0.00013656868992630502 0.00020423647516649895 0.0001169885474555025 0.00016091292577641986 0.0001811962475064104 0.00022175562074411314 0.0001420827707750752 0.00023701125870117113
11 6.550401580615046e-05 0.00010763357046235393 9.048611276688558e-05 0.00010463881167700424 8.53976936510665e-05 0.00014223136766932474 0.00010597747510077656 9.480732860265419e-05 0.00014119892775857996 9.239007580729953e-05 7.766442423483103e-05 0.00010986995435039374 6.457108561560009e-05 9.569680074439257e-05 0.00012767465309985736 0.00012291064498875804 6.619179860012668e-05 0.00011947561281949321 0.00014060571609205618 9.876914536813564e-05 0.00010324771465951238 0.00011534175455491343 8.842622885133908e-05 0.00010354317263213134 8.407915382249736e-05 0.00011790527054049549 6.621343691269247e-05 9.396182467998437e-05 0.00011397894146834145 0.00012250609187225783 7.878914318348402e-05 0.00014299898962627766
12 0.00011432131514060219 0.00018940778299272236 0.00023390349073193107 0.00020330784402001223 0.00017900676947934374 0.0003393995045025121 0.0003140774044815816 0.0001697040214683053 0.0002616993171789624 0.00018657152419501198 0.00010986995435039374 0.0003030187195647059 0.00013662343279477614 0.00018847596237860442 0.0003411346776868435 0.00028861394611659214 0.00011243684628001616 0.00022612193372887617 0.00024151496942131177 0.00018246622240332563 0.0002537114974480425 0.0002734807338399013 0.00017528407584120175 0.0002608852257096235 0.00016292166501299216 0.0002934333331072113 0.0001368498897820562 0.0002757910487067542 0.00018887718518705233 0.00026153542082944396 0.00022664864839746124 0.00034586785488977613
13 7.097143801861302e-05 8.121602599561605e-05 0.00010488557971707897 0.00010373791953753782 0.00015221765200279185 0.00017726351371025195 0.00015466958614354415 0.00010933863561251277 0.00020695824808124186 0.00014356020131905966 6.457108561560009e-05 0.00013662343279477614 0.00012626748280101903 9.84364039904796e-05 0.00019307226971839432 0.00015377770752087456 8.602515691150537e-05 0.00012481503625349138 0.0002046847822713733 9.420947239778095e-05 0.00011220324840813463 0.00012893432649910204 0.00010333789991522394 0.0001300020579814012 9.489466354389855e-05 0.00013806195085160837 8.181728982411321e-05 0.00013181349806394398 0.00012017740588842114 0.00013332586489009588 0.00011836131258878208 0.0001593532569439434
14 0.00010555586258523555 0.00017535963169080927 0.0001687933621203631 0.00018956679035651746 0.0001415440883852911 0.00023386209845467068 0.0001860364915239402 0.00014111607617557073 0.00023143407137089504 0.00014927623701849971 9.569680074439257e-05 0.00018847596237860442 9.84364039904796e-05 0.00021652642277509394 0.0002619408476044795 0.00020445479832165392 8.941949456202835e-05 0.00024108357150143985 0.00023713123393335182 0.0001694758062401838 0.00018313324802095906 0.00019855585053630875 0.0001532745355701337 0.00017609410011549384 0.00016266124079062207 0.00020454738883753546 0.00014052659726458016 0.0001708158161956866 0.00019274315837413162 0.00021353389864156263 0.00015374114695638168 0.00026156057260834505
15 0.00016919325082122863 0.00024261960985491374 0.00026399765411761096 0.00025562084295418575 0.00027754764207087103 0.00041149922282010645 0.00036153337401965464 0.00025024926670104224 0.00044788174503134447 0.0003070976798408174 0.00012767465309985736 0.0003411346776868435 0.00019307226971839432 0.0002619408476044795 0.0005392299634639984 0.00037333488617690504 0.000159433546810766 0.00032759918224213477 0.00043788579977801606 0.00024180387544636757 0.0003310435697587253 0.00034478323114341125 0.00024378437890008143 0.0002940971761741942 0.00023029767298909893 0.0003539724206496882 0.00017428688246583007 0.00031294216144648305 0.00028345185089729224 0.00034708665682832597 0.00027952786866964816 0.0004084360260695141
16 0.00012995970994020292 0.00020223963129463747 0.00023311631296020485 0.00022675092572846853 0.00020966219949710883 0.00035347765738953044 0.0003036729933490082 0.00019394969955357995 0.00031810018433517617 0.00023813255473841162 0.00012291064498875804 0.00028861394611659214 0.00015377770752087456 0.00020445479832165392 0.00037333488617690504 0.0003188028505144802 0.0001326187736405575 0.0002460872947851453 0.000313684103884812 0.0001901012934196362 0.00026463723944038296 0.0002849784486319544 0.00017986213467573297 0.0002546117875112539 0.000179667226421421 0.0003007882429643764 0.00014973678800629615 0.0002657442236856707 0.00021675667287056113 0.00027423715950164267 0.00021962589824155862 0.00033578633604790025
17 7.849114300247552e-05 0.00011196747168237277 0.00010344711762262646 9.572946379127901e-05 0.0001136634624535044 0.00015022588824313728 0.00011485907386164338 9.006530311984282e-05 0.0001633825140987072 0.00011934562657250669 6.619179860012668e-05 0.00011243684628001616 8.602515691150537e-05 8.941949456202835e-05 0.000159433546810766 0.0001326187736405575 9.914132761529471e-05 0.00012082527567994881 0.00017279288545212813 9.704845370061698e-05 0.0001126539537578845 0.00011672453332979605 8.965344027860027e-05 0.0001133009116368907 8.324305069390871e-05 0.00011788651813397374 6.755071046009554e-05 0.00010711060206660872 0.00012354513931118192 0.000121967204657048 0.00010308398498627549 0.00013947413777976042
18 0.00014704292112797322 0.00023259912366002154 0.00021320728766666572 0.0002269223880630908 0.00017576753893894364 0.00028804409972904186 0.00023235177817308386 0.0001766315011594577 0.00030914666525273414 0.0001888568081309793 0.00011947561281949321 0.00022612193372887617 0.00012481503625349138 0.00024108357150143985 0.00032759918224213477 0.0002460872947851453 0.00012082527567994881 0.0003074922955257787 0.0003177267229511631 0.00022508788164765295 0.00022500108320905275 0.00023648218786611686 0.00019992416703777408 0.00022308389432767223 0.00020784980435565047 0.00024412302843568765 0.00016212080387213935 0.00022570064585703478 0.0002718528175611692 0.00026358817252434543 0.00020058269605899894 0.0003158842434032137
19 0.00018483179205244286 0.00021100790666772252 0.00021137882042008424 0.0002549738563163493 0.0002873172221714608 0.0003508762668254702 0.00026721849792875406 0.00026371920113896967 0.000509889820048385 0.0003072334307171255 0.00014060571609205618 0.00024151496942131177 0.0002046847822713733 0.00023713123393335182 0.00043788579977801606 0.000313684103884812 0.00017279288545212813 0.0003177267229511631 0.0005266945349814844 0.0002394801725929105 0.00026793459028240455 0.0002964974732539447 0.00024479593638972196 0.00022919733211297427 0.00023196580522219629 0.0002573174125624259 0.0001754981574205762 0.0002347397597625404 0.00032802231932777177 0.00030042849255680165 0.00020939698305557817 0.0003302917116454353
20 0.00011965780223918792 0.00018137160523063698 0.00017305792233786982 0.00016802885665378407 0.00013485468436956108 0.00022913662959062582 0.00019046420126602346 0.0001392773199730587 0.0002398756246021114 0.00013610620763797145 9.876914536813564e-05 0.00018246622240332563 9.420947239778095e-05 0.0001694758062401838 0.00024180387544636757 0.0001901012934196362 9.704845370061698e-05 0.00022508788164765295 0.0002394801725929105 0.00018089392171283394 0.00017763214447978076 0.0001877378099582506 0.00015861633514362456 0.0001837702192676372 0.00015914438914312076 0.00019485803060439576 0.00011247373293665397 0.00018278145203446143 0.00021080800577756437 0.00019758659719091667 0.00016132737014191057 0.00025126637259476905
21 0.00012572021143145054 0.00017689608720285833 0.0002134826061422893 0.00020257935884611695 0.0001830861639539459 0.00030493375439300083 0.0002571466529302512 0.00017264113397937592 0.00028192730354486623 0.0001911567912243893 0.00010324771465951238 0.0002537114974480425 0.00011220324840813463 0.00018313324802095906 0.0003310435697587253 0.00026463723944038296 0.0001126539537578845 0.00022500108320905275 0.00026793459028240455 0.00017763214447978076 0.0002654104855232494 0.00028021304044806067 0.00016532345705047146 0.00022364381967303614 0.00015563644852976673 0.0002565613510833626 0.00012499142299389162 0.0002276996546100936 0.0002041684893469655 0.00025211565364331853 0.00020127494767336273 0.00031765610854129903
22 0.00013031706797864883 0.0001751961388630822 0.0002238442165080389 0.00022239069616531777 0.00020630878998184244 0.0003327551703717083 0.0002771867647563981 0.00019581614125295028 0.0003138056170847041 0.00020769888397045234 0.00011534175455491343 0.0002734807338399013 0.00012893432649910204 0.00019855585053630875 0.00034478323114341125 0.0002849784486319544 0.00011672453332979605 0.00023648218786611686 0.0002964974732539447 0.0001877378099582506 0.00028021304044806067 0.00030592342575556724 0.00017846812943633918 0.00023816880592650693 0.00016500665495912338 0.0002723058688404718 0.00013832783241771364 0.0002411778838788005 0.00021174973421905847 0.0002754319449318882 0.00020788061229362191 0.0003441472742880822
23 0.00010684916383785383 0.00014751873029590152 0.00014215462458406122 0.000147702561324356 0.0001426517649204768 0.0002165500830751404 0.00018711422751349234 0.00014225604982180892 0.0002524953268133542 0.00014082617368767292 8.842622885133908e-05 0.00017528407584120175 0.00010333789991522394 0.0001532745355701337 0.00024378437890008143 0.00017986213467573297 8.965344027860027e-05 0.00019992416703777408 0.00024479593638972196 0.00015861633514362456 0.00016532345705047146 0.00017846812943633918 0.00016445819382207818 0.00014995223101444931 0.00014688649378311928 0.0001739007309425985 0.00011369331022078444 0.00015973731523376004 0.00020238750274951427 0.00017045621649331357 0.00013184958212748764 0.00023582865974349708
24 0.00012060372187681276 0.0001845088035044107 0.00023861780839862657 0.00019618636306207503 0.00016805545480379238 0.00030834559436531225 0.0002737069490520482 0.00014068244288916704 0.0002440607089899772 0.00016595346187308794 0.00010354317263213134 0.0002608852257096235 0.0001300020579814012 0.00017609410011549384 0.0002940971761741942 0.0002546117875112539 0.0001133009116368907 0.00022308389432767223 0.00022919733211297427 0.0001837702192676372 0.00022364381967303614 0.00023816880592650693 0.00014995223101444931 0.00027924043314442033 0.00015810041950220925 0.0002799359730375195 0.00011769189897054332 0.00026376624414347456 0.0001802052009924257 0.00024844321990195504 0.0002473312586889233 0.0003185211468970159
25 0.00010974246555871224 0.00015694200645792686 0.0001515305304294571 0.00015580343479201518 0.00013511438182374982 0.00020722702345820596 0.00017467379001698548 0.00013147752378796067 0.00023000261185064574 0.00013656868992630502 8.407915382249736e-05 0.00016292166501299216 9.489466354389855e-05 0.00016266124079062207 0.00023029767298909893 0.000179667226421421 8.324305069390871e-05 0.00020784980435565047 0.00023196580522219629 0.00015914438914312076 0.00015563644852976673 0.00016500665495912338 0.00014688649378311928 0.00015810041950220925 0.00015959795935381344 0.0001770886726001276 0.0001147901970738603 0.00016394661041917172 0.00020146210077259994 0.00016852671912643476 0.00014029445212079597 0.00022778231344145047
26 0.000130181694487951 0.0001988202284731237 0.0002456366742983983 0.00021230363213528718 0.00019468003776003043 0.0003490009375368679 0.0003087755515246635 0.00017409320739107396 0.00027668844538388773 0.00020423647516649895 0.00011790527054049549 0.0002934333331072113 0.00013806195085160837 0.00020454738883753546 0.0003539724206496882 0.0003007882429643764 0.00011788651813397374 0.00024412302843568765 0.0002573174125624259 0.00019485803060439576 0.0002565613510833626 0.0002723058688404718 0.0001739007309425985 0.0002799359730375195 0.0001770886726001276 0.0003414925352983394 0.00013705270227485207 0.0002693223915279764 0.00019905839488091053 0.0002714637818115214 0.00024878175659157265 0.000357220798165101
27 7.437646985487893e-05 0.00010923975070528796 0.00011342532838929489 0.0001358128465076442 0.00011044550493658402 0.0001757045727302617 0.00014003250628520842 9.532203840509743e-05 0.00016930087483469123 0.0001169885474555025 6.621343691269247e-05 0.0001368498897820562 8.181728982411321e-05 0.00014052659726458016 0.00017428688246583007 0.00014973678800629615 6.755071046009554e-05 0.00016212080387213935 0.0001754981574205762 0.00011247373293665397 0.00012499142299389162 0.00013832783241771364 0.00011369331022078444 0.00011769189897054332 0.0001147901970738603 0.00013705270227485207 0.00011415908713822149 0.0001225581457032395 0.00015232984059828538 0.00014024173608784914 9.911821656460682e-05 0.00018619968042310852
28 0.0001110138489538414 0.0002045872398081749 0.00025528614997495484 0.0001902475862511304 0.00015035548407445952 0.0003207464533868036 0.000307914889842801 0.00014290979368788607 0.00023882412731762232 0.00016091292577641986 9.396182467998437e-05 0.0002757910487067542 0.00013181349806394398 0.0001708158161956866 0.00031294216144648305 0.0002657442236856707 0.00010711060206660872 0.00022570064585703478 0.0002347397597625404 0.00018278145203446143 0.0002276996546100936 0.0002411778838788005 0.00015973731523376004 0.00026376624414347456 0.00016394661041917172 0.0002693223915279764 0.0001225581457032395 0.0003077684976218609 0.00019141867879160398 0.0002189927767379613 0.00024042039882619598 0.00030366335947429974
29 0.00015556172942513195 0.0002037578338543944 0.00018057966098076474 0.0001986843549244611 0.00017630754925443968 0.0002598781813717423 0.00020295265783686284 0.00016334897103716968 0.0003132586822597423 0.0001811962475064104 0.00011397894146834145 0.00018887718518705233 0.00012017740588842114 0.00019274315837413162 0.00028345185089729224 0.00021675667287056113 0.00012354513931118192 0.0002718528175611692 0.00032802231932777177 0.00021080800577756437 0.0002041684893469655 0.00021174973421905847 0.00020238750274951427 0.0001802052009924257 0.00020146210077259994 0.00019905839488091053 0.00015232984059828538 0.00019141867879160398 0.000304390050883362 0.00020701296909945142 0.00016529174784809722 0.00027729907581123056
30 0.00013384441125575283 0.00018760558275883807 0.00019998412768631812 0.00022801571063601155 0.00021164729786833894 0.0003171999097739343 0.00024691792048764377 0.00019848255750229662 0.00031240292481043085 0.00022175562074411314 0.00012250609187225783 0.00026153542082944396 0.00013332586489009588 0.00021353389864156263 0.00034708665682832597 0.00027423715950164267 0.000121967204657048 0.00026358817252434543 0.00030042849255680165 0.00019758659719091667 0.00025211565364331853 0.0002754319449318882 0.00017045621649331357 0.00024844321990195504 0.00016852671912643476 0.0002714637818115214 0.00014024173608784914 0.0002189927767379613 0.00020701296909945142 0.0003321910190524795 0.00020966649846697755 0.0003432408253667318
31 0.00011099182051105849 0.0001579629592576025 0.00021616360852042582 0.0001600007856799341 0.00015381731585977184 0.0002686385356256879 0.0002448859351735955 0.00010800772025786985 0.00021166796081924387 0.0001420827707750752 7.878914318348402e-05 0.00022664864839746124 0.00011836131258878208 0.00015374114695638168 0.00027952786866964816 0.00021962589824155862 0.00010308398498627549 0.00020058269605899894 0.00020939698305557817 0.00016132737014191057 0.00020127494767336273 0.00020788061229362191 0.00013184958212748764 0.0002473312586889233 0.00014029445212079597 0.00024878175659157265 9.911821656460682e-05 0.00024042039882619598 0.00016529174784809722 0.00020966649846697755 0.00024309123209688237 0.0002717878484367583
32 0.00016897154858807077 0.00023176019502991904 0.00027888001389912644 0.00027033290749688794 0.00024954783526763774 0.0004082626802316255 0.0003453816308139265 0.00022918568760843584 0.0003660628382419269 0.00023701125870117113 0.00014299898962627766 0.00034586785488977613 0.0001593532569439434 0.00026156057260834505 0.0004084360260695141 0.00033578633604790025 0.00013947413777976042 0.0003158842434032137 0.0003302917116454353 0.00025126637259476905 0.00031765610854129903 0.0003441472742880822 0.00023582865974349708 0.0003185211468970159 0.00022778231344145047 0.000357220798165101 0.00018619968042310852 0.00030366335947429974 0.00027729907581123056 0.0003432408253667318 0.0002717878484367583 0.0004611551806832894;
end;