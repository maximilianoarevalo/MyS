H1 = tf(4,[10,0,4]);
H2 = tf(3,[6,16]);
H3 = tf([4,10],[4,9,5,0]);
H4 = tf(1,[7,10]);
H5 = tf([8,8],[1,2,3,0]);
H6 = tf([3,2],[5,7,10]);

A1 = feedback(H3,-1)
A2 = parallel(H4,H5)

A = A1*A2*H6

final = H1+H2+A

step(final)