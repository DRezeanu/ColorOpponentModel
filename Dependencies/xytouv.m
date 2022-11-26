function uv = xytouv(xy)

u = 4*xy(1)/(-2*xy(1)+12*xy(2)+3);
v = 9*xy(2)/(-2*xy(1)+12*xy(2)+3);

uv = [u,v];