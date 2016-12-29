function im01_kenar_255 = kenarSezim(im)
 im01=double(im)/255;
yatay=[-1 0 1;-2 0 2;-1 0 1];
dikey=flipud(yatay');
im01_yatay=conv2(im01,yatay,'same');
im01_dikey=conv2(im01,dikey,'same');
im01_kenar=(im01_yatay.^2+im01_dikey.^2).^(1/2);
im01_kenar_255=uint8(im01_kenar*255);
imshow(im01_kenar_255);
end

