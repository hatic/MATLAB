function kenarSezim=robertsCross(image)
% Çapraz kenar algýlama için Roberts Operatörünün uygulanmasý
% Matematikte daha iyi doðruluk için görüntüyü çift deðerlere dönüþtürme

 image = double(image);
 image = double((image)/255);

% Köþe kenarlarýný algýlamak ve onlarý konvüze etmek için çekirdekler oluþturma

K1 = [0 1; -1 0];
K2 = [1 0; 0 -1];
imgK1 = conv2(image, K1);
imgK2 = conv2(image, K2);

% Degrade büyüklüðünü elde etmek için iki çýktý birleþtirme
mag = sqrt (imgK1.^ 2 + imgK2.^ 2);

% Degrade yönünü hesaplama
dir = atan2 (imgK2, imgK1) - ((3 * pi) / 4);

% Imshow'un görüntüleyebilmesini saðlamak için mag'deki tüm deðerleri 0 ile 1 arasýnda ölçeklendirin
mag = double(mag);
imshow (mag);

% Imshow'un görüntüleyebilmesini saðlamak için dir'deki tüm deðerleri 0 ile 1 arasýnda ölçeklendirin.

dir = double(dir);


% Eþik Büyüklüðü
binMag = treshold(mag, 100);
imshow (binMag);

% Eþik Yönü
binDir = treshold (dir, 100);
imshow(binDir);
% Büyüklüðün 8 baðlantýsýna dayanan inceltme
incelrilmisImage = thin(binMag);
imshow (incelrilmisImage);
end