ma(a,x).
ma(b,y).
ma(c,z).
ma(c,w).
daje([0],a,b,x).
daje([[[0]]],c,b,z).
daje([[[[0]]]],b,c,x).
daje([[[[[[0]]]]]],b,c,z).
ma(0,Kto, Co):-ma(Kto,Co).
ma([Kiedy],Kto, Co):-daje(Kiedy,_,Kto,Co).
ma([Kiedy],Kto, Co):-ma(Kiedy,Kto,Co),\+ (daje(Kiedy,Kto,_,Co)).
