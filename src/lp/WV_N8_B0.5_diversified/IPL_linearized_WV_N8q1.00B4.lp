\* Problem: IPL_linearized_WV_N8q1 *\

Maximize
 obj: + 0.000125631102737379 y(1,1) - 8.9093059890115e-07 y(1,2)
 + 4.03554929650154e-06 y(1,3) - 4.99792954319773e-07 y(1,4)
 + 4.17707017740783e-06 y(1,5) + 1.69780891758694e-05 y(1,6)
 - 5.90707560378736e-05 y(1,7) + 1.82351387264179e-05 y(1,8)
 - 8.9093059890115e-07 y(2,1) + 0.000173985202956999 y(2,2)
 - 3.16147527942095e-06 y(2,3) + 2.00251841757482e-05 y(2,4)
 + 3.55834228534523e-06 y(2,5) + 8.26609822665372e-06 y(2,6)
 + 1.12053909140032e-06 y(2,7) + 3.26667790343666e-07 y(2,8)
 + 4.03554929650154e-06 y(3,1) - 3.16147527942095e-06 y(3,2)
 + 0.000135543124223756 y(3,3) - 1.2475874008443e-06 y(3,4)
 + 2.06894621959045e-05 y(3,5) + 2.71735811431271e-05 y(3,6)
 + 6.07990868363049e-06 y(3,7) + 1.34404947298051e-05 y(3,8)
 - 4.99792954319773e-07 y(4,1) + 2.00251841757482e-05 y(4,2)
 - 1.2475874008443e-06 y(4,3) + 0.000299910342538439 y(4,4)
 + 1.0338154694113e-05 y(4,5) + 4.13288215185663e-05 y(4,6)
 - 2.34905505984488e-05 y(4,7) + 3.98758231436253e-07 y(4,8)
 + 4.17707017740783e-06 y(5,1) + 3.55834228534523e-06 y(5,2)
 + 2.06894621959045e-05 y(5,3) + 1.0338154694113e-05 y(5,4)
 + 9.63825553241373e-05 y(5,5) + 6.625591143502e-06 y(5,6)
 - 2.28126034831917e-06 y(5,7) + 7.3490574966561e-06 y(5,8)
 + 1.69780891758694e-05 y(6,1) + 8.26609822665372e-06 y(6,2)
 + 2.71735811431271e-05 y(6,3) + 4.13288215185663e-05 y(6,4)
 + 6.625591143502e-06 y(6,5) + 0.000480648767838511 y(6,6)
 - 2.51236541694407e-07 y(6,7) - 5.26208563416276e-05 y(6,8)
 - 5.90707560378736e-05 y(7,1) + 1.12053909140032e-06 y(7,2)
 + 6.07990868363049e-06 y(7,3) - 2.34905505984488e-05 y(7,4)
 - 2.28126034831917e-06 y(7,5) - 2.51236541694407e-07 y(7,6)
 + 0.00047033222936711 y(7,7) - 2.33125852628257e-06 y(7,8)
 + 1.82351387264179e-05 y(8,1) + 3.26667790343666e-07 y(8,2)
 + 1.34404947298051e-05 y(8,3) + 3.98758231436253e-07 y(8,4)
 + 7.3490574966561e-06 y(8,5) - 5.26208563416276e-05 y(8,6)
 - 2.33125852628257e-06 y(8,7) + 0.000692405380684567 y(8,8)

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
