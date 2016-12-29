function kenarSezim=robertsCross(image)
% �apraz kenar alg�lama i�in Roberts Operat�r�n�n uygulanmas�
% Matematikte daha iyi do�ruluk i�in g�r�nt�y� �ift de�erlere d�n��t�rme

 image = double(image);
 image = double((image)/255);

% K��e kenarlar�n� alg�lamak ve onlar� konv�ze etmek i�in �ekirdekler olu�turma

K1 = [0 1; -1 0];
K2 = [1 0; 0 -1];
imgK1 = conv2(image, K1);
imgK2 = conv2(image, K2);

% Degrade b�y�kl���n� elde etmek i�in iki ��kt� birle�tirme
mag = sqrt (imgK1.^ 2 + imgK2.^ 2);

% Degrade y�n�n� hesaplama
dir = atan2 (imgK2, imgK1) - ((3 * pi) / 4);

% Imshow'un g�r�nt�leyebilmesini sa�lamak i�in mag'deki t�m de�erleri 0 ile 1 aras�nda �l�eklendirin
mag = double(mag);
imshow (mag);

% Imshow'un g�r�nt�leyebilmesini sa�lamak i�in dir'deki t�m de�erleri 0 ile 1 aras�nda �l�eklendirin.

dir = double(dir);


% E�ik B�y�kl���
binMag = treshold(mag, 100);
imshow (binMag);

% E�ik Y�n�
binDir = treshold (dir, 100);
imshow(binDir);
% B�y�kl���n 8 ba�lant�s�na dayanan inceltme
incelrilmisImage = thin(binMag);
imshow (incelrilmisImage);
end