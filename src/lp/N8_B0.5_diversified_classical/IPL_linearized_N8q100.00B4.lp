\* Problem: IPL_linearized_N8q100 *\

Minimize
 obj: + 0.0125631102737379 y(1,1) - 8.9093059890115e-05 y(1,2)
 + 0.000403554929650154 y(1,3) - 4.99792954319773e-05 y(1,4)
 + 0.000417707017740782 y(1,5) + 0.00169780891758694 y(1,6)
 - 0.00590707560378736 y(1,7) + 0.00182351387264179 y(1,8)
 - 8.9093059890115e-05 y(2,1) + 0.0173985202956999 y(2,2)
 - 0.000316147527942095 y(2,3) + 0.00200251841757482 y(2,4)
 + 0.000355834228534523 y(2,5) + 0.000826609822665372 y(2,6)
 + 0.000112053909140032 y(2,7) + 3.26667790343666e-05 y(2,8)
 + 0.000403554929650154 y(3,1) - 0.000316147527942095 y(3,2)
 + 0.0135543124223756 y(3,3) - 0.00012475874008443 y(3,4)
 + 0.00206894621959045 y(3,5) + 0.00271735811431271 y(3,6)
 + 0.000607990868363049 y(3,7) + 0.00134404947298051 y(3,8)
 - 4.99792954319773e-05 y(4,1) + 0.00200251841757482 y(4,2)
 - 0.00012475874008443 y(4,3) + 0.0299910342538439 y(4,4)
 + 0.0010338154694113 y(4,5) + 0.00413288215185663 y(4,6)
 - 0.00234905505984488 y(4,7) + 3.98758231436253e-05 y(4,8)
 + 0.000417707017740782 y(5,1) + 0.000355834228534523 y(5,2)
 + 0.00206894621959045 y(5,3) + 0.0010338154694113 y(5,4)
 + 0.00963825553241373 y(5,5) + 0.0006625591143502 y(5,6)
 - 0.000228126034831917 y(5,7) + 0.00073490574966561 y(5,8)
 + 0.00169780891758694 y(6,1) + 0.000826609822665372 y(6,2)
 + 0.00271735811431271 y(6,3) + 0.00413288215185663 y(6,4)
 + 0.0006625591143502 y(6,5) + 0.0480648767838511 y(6,6)
 - 2.51236541694407e-05 y(6,7) - 0.00526208563416276 y(6,8)
 - 0.00590707560378736 y(7,1) + 0.000112053909140032 y(7,2)
 + 0.000607990868363049 y(7,3) - 0.00234905505984488 y(7,4)
 - 0.000228126034831917 y(7,5) - 2.51236541694407e-05 y(7,6)
 + 0.047033222936711 y(7,7) - 0.000233125852628257 y(7,8)
 + 0.00182351387264179 y(8,1) + 3.26667790343666e-05 y(8,2)
 + 0.00134404947298051 y(8,3) + 3.98758231436253e-05 y(8,4)
 + 0.00073490574966561 y(8,5) - 0.00526208563416276 y(8,6)
 - 0.000233125852628257 y(8,7) + 0.0692405380684567 y(8,8)
 - 0.00281025272830319 x(1) - 0.00475409199050309 x(2)
 - 0.00317222649193316 x(3) + 0.00794422148720399 x(4)
 - 0.00193760151939285 x(5) - 0.0092272863841885 x(6)
 + 0.000443286258177594 x(7) - 0.0109727470097396 x(8)

Subject To
 card0: + x(1) + x(2) + x(3) + x(4) + x(5) + x(6) + x(7) + x(8) = 4
 card1(1,1): + y(1,1) - x(1) <= -0
 card1(1,2): + y(1,2) - x(1) <= -0
 card1(1,3): + y(1,3) - x(1) <= -0
 card1(1,4): + y(1,4) - x(1) <= -0
 card1(1,5): + y(1,5) - x(1) <= -0
 card1(1,6): + y(1,6) - x(1) <= -0
 card1(1,7): + y(1,7) - x(1) <= -0
 card1(1,8): + y(1,8) - x(1) <= -0
 card1(2,1): + y(2,1) - x(2) <= -0
 card1(2,2): + y(2,2) - x(2) <= -0
 card1(2,3): + y(2,3) - x(2) <= -0
 card1(2,4): + y(2,4) - x(2) <= -0
 card1(2,5): + y(2,5) - x(2) <= -0
 card1(2,6): + y(2,6) - x(2) <= -0
 card1(2,7): + y(2,7) - x(2) <= -0
 card1(2,8): + y(2,8) - x(2) <= -0
 card1(3,1): + y(3,1) - x(3) <= -0
 card1(3,2): + y(3,2) - x(3) <= -0
 card1(3,3): + y(3,3) - x(3) <= -0
 card1(3,4): + y(3,4) - x(3) <= -0
 card1(3,5): + y(3,5) - x(3) <= -0
 card1(3,6): + y(3,6) - x(3) <= -0
 card1(3,7): + y(3,7) - x(3) <= -0
 card1(3,8): + y(3,8) - x(3) <= -0
 card1(4,1): + y(4,1) - x(4) <= -0
 card1(4,2): + y(4,2) - x(4) <= -0
 card1(4,3): + y(4,3) - x(4) <= -0
 card1(4,4): + y(4,4) - x(4) <= -0
 card1(4,5): + y(4,5) - x(4) <= -0
 card1(4,6): + y(4,6) - x(4) <= -0
 card1(4,7): + y(4,7) - x(4) <= -0
 card1(4,8): + y(4,8) - x(4) <= -0
 card1(5,1): + y(5,1) - x(5) <= -0
 card1(5,2): + y(5,2) - x(5) <= -0
 card1(5,3): + y(5,3) - x(5) <= -0
 card1(5,4): + y(5,4) - x(5) <= -0
 card1(5,5): + y(5,5) - x(5) <= -0
 card1(5,6): + y(5,6) - x(5) <= -0
 card1(5,7): + y(5,7) - x(5) <= -0
 card1(5,8): + y(5,8) - x(5) <= -0
 card1(6,1): + y(6,1) - x(6) <= -0
 card1(6,2): + y(6,2) - x(6) <= -0
 card1(6,3): + y(6,3) - x(6) <= -0
 card1(6,4): + y(6,4) - x(6) <= -0
 card1(6,5): + y(6,5) - x(6) <= -0
 card1(6,6): + y(6,6) - x(6) <= -0
 card1(6,7): + y(6,7) - x(6) <= -0
 card1(6,8): + y(6,8) - x(6) <= -0
 card1(7,1): + y(7,1) - x(7) <= -0
 card1(7,2): + y(7,2) - x(7) <= -0
 card1(7,3): + y(7,3) - x(7) <= -0
 card1(7,4): + y(7,4) - x(7) <= -0
 card1(7,5): + y(7,5) - x(7) <= -0
 card1(7,6): + y(7,6) - x(7) <= -0
 card1(7,7): + y(7,7) - x(7) <= -0
 card1(7,8): + y(7,8) - x(7) <= -0
 card1(8,1): + y(8,1) - x(8) <= -0
 card1(8,2): + y(8,2) - x(8) <= -0
 card1(8,3): + y(8,3) - x(8) <= -0
 card1(8,4): + y(8,4) - x(8) <= -0
 card1(8,5): + y(8,5) - x(8) <= -0
 card1(8,6): + y(8,6) - x(8) <= -0
 card1(8,7): + y(8,7) - x(8) <= -0
 card1(8,8): + y(8,8) - x(8) <= -0
 card2(1,1): + y(1,1) - x(1) <= -0
 card2(1,2): + y(1,2) - x(2) <= -0
 card2(1,3): + y(1,3) - x(3) <= -0
 card2(1,4): + y(1,4) - x(4) <= -0
 card2(1,5): + y(1,5) - x(5) <= -0
 card2(1,6): + y(1,6) - x(6) <= -0
 card2(1,7): + y(1,7) - x(7) <= -0
 card2(1,8): + y(1,8) - x(8) <= -0
 card2(2,1): + y(2,1) - x(1) <= -0
 card2(2,2): + y(2,2) - x(2) <= -0
 card2(2,3): + y(2,3) - x(3) <= -0
 card2(2,4): + y(2,4) - x(4) <= -0
 card2(2,5): + y(2,5) - x(5) <= -0
 card2(2,6): + y(2,6) - x(6) <= -0
 card2(2,7): + y(2,7) - x(7) <= -0
 card2(2,8): + y(2,8) - x(8) <= -0
 card2(3,1): + y(3,1) - x(1) <= -0
 card2(3,2): + y(3,2) - x(2) <= -0
 card2(3,3): + y(3,3) - x(3) <= -0
 card2(3,4): + y(3,4) - x(4) <= -0
 card2(3,5): + y(3,5) - x(5) <= -0
 card2(3,6): + y(3,6) - x(6) <= -0
 card2(3,7): + y(3,7) - x(7) <= -0
 card2(3,8): + y(3,8) - x(8) <= -0
 card2(4,1): + y(4,1) - x(1) <= -0
 card2(4,2): + y(4,2) - x(2) <= -0
 card2(4,3): + y(4,3) - x(3) <= -0
 card2(4,4): + y(4,4) - x(4) <= -0
 card2(4,5): + y(4,5) - x(5) <= -0
 card2(4,6): + y(4,6) - x(6) <= -0
 card2(4,7): + y(4,7) - x(7) <= -0
 card2(4,8): + y(4,8) - x(8) <= -0
 card2(5,1): + y(5,1) - x(1) <= -0
 card2(5,2): + y(5,2) - x(2) <= -0
 card2(5,3): + y(5,3) - x(3) <= -0
 card2(5,4): + y(5,4) - x(4) <= -0
 card2(5,5): + y(5,5) - x(5) <= -0
 card2(5,6): + y(5,6) - x(6) <= -0
 card2(5,7): + y(5,7) - x(7) <= -0
 card2(5,8): + y(5,8) - x(8) <= -0
 card2(6,1): + y(6,1) - x(1) <= -0
 card2(6,2): + y(6,2) - x(2) <= -0
 card2(6,3): + y(6,3) - x(3) <= -0
 card2(6,4): + y(6,4) - x(4) <= -0
 card2(6,5): + y(6,5) - x(5) <= -0
 card2(6,6): + y(6,6) - x(6) <= -0
 card2(6,7): + y(6,7) - x(7) <= -0
 card2(6,8): + y(6,8) - x(8) <= -0
 card2(7,1): + y(7,1) - x(1) <= -0
 card2(7,2): + y(7,2) - x(2) <= -0
 card2(7,3): + y(7,3) - x(3) <= -0
 card2(7,4): + y(7,4) - x(4) <= -0
 card2(7,5): + y(7,5) - x(5) <= -0
 card2(7,6): + y(7,6) - x(6) <= -0
 card2(7,7): + y(7,7) - x(7) <= -0
 card2(7,8): + y(7,8) - x(8) <= -0
 card2(8,1): + y(8,1) - x(1) <= -0
 card2(8,2): + y(8,2) - x(2) <= -0
 card2(8,3): + y(8,3) - x(3) <= -0
 card2(8,4): + y(8,4) - x(4) <= -0
 card2(8,5): + y(8,5) - x(5) <= -0
 card2(8,6): + y(8,6) - x(6) <= -0
 card2(8,7): + y(8,7) - x(7) <= -0
 card2(8,8): + y(8,8) - x(8) <= -0
 card3(1,1): + y(1,1) - 2 x(1) >= -1
 card3(1,2): + y(1,2) - x(1) - x(2) >= -1
 card3(1,3): + y(1,3) - x(1) - x(3) >= -1
 card3(1,4): + y(1,4) - x(1) - x(4) >= -1
 card3(1,5): + y(1,5) - x(1) - x(5) >= -1
 card3(1,6): + y(1,6) - x(1) - x(6) >= -1
 card3(1,7): + y(1,7) - x(1) - x(7) >= -1
 card3(1,8): + y(1,8) - x(1) - x(8) >= -1
 card3(2,1): + y(2,1) - x(1) - x(2) >= -1
 card3(2,2): + y(2,2) - 2 x(2) >= -1
 card3(2,3): + y(2,3) - x(2) - x(3) >= -1
 card3(2,4): + y(2,4) - x(2) - x(4) >= -1
 card3(2,5): + y(2,5) - x(2) - x(5) >= -1
 card3(2,6): + y(2,6) - x(2) - x(6) >= -1
 card3(2,7): + y(2,7) - x(2) - x(7) >= -1
 card3(2,8): + y(2,8) - x(2) - x(8) >= -1
 card3(3,1): + y(3,1) - x(1) - x(3) >= -1
 card3(3,2): + y(3,2) - x(2) - x(3) >= -1
 card3(3,3): + y(3,3) - 2 x(3) >= -1
 card3(3,4): + y(3,4) - x(3) - x(4) >= -1
 card3(3,5): + y(3,5) - x(3) - x(5) >= -1
 card3(3,6): + y(3,6) - x(3) - x(6) >= -1
 card3(3,7): + y(3,7) - x(3) - x(7) >= -1
 card3(3,8): + y(3,8) - x(3) - x(8) >= -1
 card3(4,1): + y(4,1) - x(1) - x(4) >= -1
 card3(4,2): + y(4,2) - x(2) - x(4) >= -1
 card3(4,3): + y(4,3) - x(3) - x(4) >= -1
 card3(4,4): + y(4,4) - 2 x(4) >= -1
 card3(4,5): + y(4,5) - x(4) - x(5) >= -1
 card3(4,6): + y(4,6) - x(4) - x(6) >= -1
 card3(4,7): + y(4,7) - x(4) - x(7) >= -1
 card3(4,8): + y(4,8) - x(4) - x(8) >= -1
 card3(5,1): + y(5,1) - x(1) - x(5) >= -1
 card3(5,2): + y(5,2) - x(2) - x(5) >= -1
 card3(5,3): + y(5,3) - x(3) - x(5) >= -1
 card3(5,4): + y(5,4) - x(4) - x(5) >= -1
 card3(5,5): + y(5,5) - 2 x(5) >= -1
 card3(5,6): + y(5,6) - x(5) - x(6) >= -1
 card3(5,7): + y(5,7) - x(5) - x(7) >= -1
 card3(5,8): + y(5,8) - x(5) - x(8) >= -1
 card3(6,1): + y(6,1) - x(1) - x(6) >= -1
 card3(6,2): + y(6,2) - x(2) - x(6) >= -1
 card3(6,3): + y(6,3) - x(3) - x(6) >= -1
 card3(6,4): + y(6,4) - x(4) - x(6) >= -1
 card3(6,5): + y(6,5) - x(5) - x(6) >= -1
 card3(6,6): + y(6,6) - 2 x(6) >= -1
 card3(6,7): + y(6,7) - x(6) - x(7) >= -1
 card3(6,8): + y(6,8) - x(6) - x(8) >= -1
 card3(7,1): + y(7,1) - x(1) - x(7) >= -1
 card3(7,2): + y(7,2) - x(2) - x(7) >= -1
 card3(7,3): + y(7,3) - x(3) - x(7) >= -1
 card3(7,4): + y(7,4) - x(4) - x(7) >= -1
 card3(7,5): + y(7,5) - x(5) - x(7) >= -1
 card3(7,6): + y(7,6) - x(6) - x(7) >= -1
 card3(7,7): + y(7,7) - 2 x(7) >= -1
 card3(7,8): + y(7,8) - x(7) - x(8) >= -1
 card3(8,1): + y(8,1) - x(1) - x(8) >= -1
 card3(8,2): + y(8,2) - x(2) - x(8) >= -1
 card3(8,3): + y(8,3) - x(3) - x(8) >= -1
 card3(8,4): + y(8,4) - x(4) - x(8) >= -1
 card3(8,5): + y(8,5) - x(5) - x(8) >= -1
 card3(8,6): + y(8,6) - x(6) - x(8) >= -1
 card3(8,7): + y(8,7) - x(7) - x(8) >= -1
 card3(8,8): + y(8,8) - 2 x(8) >= -1

Bounds
 0 <= y(1,1) <= 1
 0 <= y(1,2) <= 1
 0 <= y(1,3) <= 1
 0 <= y(1,4) <= 1
 0 <= y(1,5) <= 1
 0 <= y(1,6) <= 1
 0 <= y(1,7) <= 1
 0 <= y(1,8) <= 1
 0 <= y(2,1) <= 1
 0 <= y(2,2) <= 1
 0 <= y(2,3) <= 1
 0 <= y(2,4) <= 1
 0 <= y(2,5) <= 1
 0 <= y(2,6) <= 1
 0 <= y(2,7) <= 1
 0 <= y(2,8) <= 1
 0 <= y(3,1) <= 1
 0 <= y(3,2) <= 1
 0 <= y(3,3) <= 1
 0 <= y(3,4) <= 1
 0 <= y(3,5) <= 1
 0 <= y(3,6) <= 1
 0 <= y(3,7) <= 1
 0 <= y(3,8) <= 1
 0 <= y(4,1) <= 1
 0 <= y(4,2) <= 1
 0 <= y(4,3) <= 1
 0 <= y(4,4) <= 1
 0 <= y(4,5) <= 1
 0 <= y(4,6) <= 1
 0 <= y(4,7) <= 1
 0 <= y(4,8) <= 1
 0 <= y(5,1) <= 1
 0 <= y(5,2) <= 1
 0 <= y(5,3) <= 1
 0 <= y(5,4) <= 1
 0 <= y(5,5) <= 1
 0 <= y(5,6) <= 1
 0 <= y(5,7) <= 1
 0 <= y(5,8) <= 1
 0 <= y(6,1) <= 1
 0 <= y(6,2) <= 1
 0 <= y(6,3) <= 1
 0 <= y(6,4) <= 1
 0 <= y(6,5) <= 1
 0 <= y(6,6) <= 1
 0 <= y(6,7) <= 1
 0 <= y(6,8) <= 1
 0 <= y(7,1) <= 1
 0 <= y(7,2) <= 1
 0 <= y(7,3) <= 1
 0 <= y(7,4) <= 1
 0 <= y(7,5) <= 1
 0 <= y(7,6) <= 1
 0 <= y(7,7) <= 1
 0 <= y(7,8) <= 1
 0 <= y(8,1) <= 1
 0 <= y(8,2) <= 1
 0 <= y(8,3) <= 1
 0 <= y(8,4) <= 1
 0 <= y(8,5) <= 1
 0 <= y(8,6) <= 1
 0 <= y(8,7) <= 1
 0 <= y(8,8) <= 1
 0 <= x(1) <= 1
 0 <= x(2) <= 1
 0 <= x(3) <= 1
 0 <= x(4) <= 1
 0 <= x(5) <= 1
 0 <= x(6) <= 1
 0 <= x(7) <= 1
 0 <= x(8) <= 1

Generals
 y(1,1)
 y(1,2)
 y(1,3)
 y(1,4)
 y(1,5)
 y(1,6)
 y(1,7)
 y(1,8)
 y(2,1)
 y(2,2)
 y(2,3)
 y(2,4)
 y(2,5)
 y(2,6)
 y(2,7)
 y(2,8)
 y(3,1)
 y(3,2)
 y(3,3)
 y(3,4)
 y(3,5)
 y(3,6)
 y(3,7)
 y(3,8)
 y(4,1)
 y(4,2)
 y(4,3)
 y(4,4)
 y(4,5)
 y(4,6)
 y(4,7)
 y(4,8)
 y(5,1)
 y(5,2)
 y(5,3)
 y(5,4)
 y(5,5)
 y(5,6)
 y(5,7)
 y(5,8)
 y(6,1)
 y(6,2)
 y(6,3)
 y(6,4)
 y(6,5)
 y(6,6)
 y(6,7)
 y(6,8)
 y(7,1)
 y(7,2)
 y(7,3)
 y(7,4)
 y(7,5)
 y(7,6)
 y(7,7)
 y(7,8)
 y(8,1)
 y(8,2)
 y(8,3)
 y(8,4)
 y(8,5)
 y(8,6)
 y(8,7)
 y(8,8)
 x(1)
 x(2)
 x(3)
 x(4)
 x(5)
 x(6)
 x(7)
 x(8)

End
