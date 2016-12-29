function degisim = degisim(x,y)

k  = bitxor(x,y);
degisim=bitand(k,y);
imshow(degisim);
end