<<<<<<< HEAD
% Medfilt2 fonksiyonundan farkl� olarak kom�ular�ndan k���k de�ere sahip  
% olan� getirdik bu y�zden resim siyaha yak�n oldu

function medianFonksiyonu = kucukAlanMedian(im,N)
im_pad = padarray(im, [floor(N/2) floor(N/2)]);
im_col = im2col(im_pad, [N N], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');%artan s�rada 1.eleman� en b�y�k eleman olur
min_vector = sorted_cols(1, :);
out = col2im(min_vector, [N N], size(im_pad), 'sliding');
imshow(out);
shg();
=======
% Medfilt2 fonksiyonundan farkl� olarak kom�ular�ndan k���k de�ere sahip  
% olan� getirdik bu y�zden resim siyaha yak�n oldu
% Her piksel kom�usunu tek bir s�tun vekt�r�ne d�n��t�rmek
% i�in im2col kulland�k ve tek bir matris olu�turmak i�in bu s�tun
% vekt�rlerinin t�m�n� ald�k. Her s�tun bir piksel kom�usu i�indeki
% piksel yo�unluklar�n� temsil eder. Sonra, her s�tunu s�rala
% ve bu s�ralanm�� matrisin en k�����n� tut. Bu, her piksel
% kom�usunun medyan de�erini temsil eden tek s�ra vekt�r olacakt�r.
% medyan filtrelenmi� sonucu almak i�in col2im ile bu vekt�r�
% orijinal g�r�nt�yle ayn� boyuta getirdik.

% Bununla birlikte, im2col ile, yaln�zca orijinal g�r�nt�n�n s�n�rlar�
% i�erisindeki piksel kom�ular�n� kavrar. Filtre piksellerini g�r�nt�n�n
% kenarlar�na ortalamak isteyeceksiniz, im2col ile i�lemeden �nce resim
% kenarl�klar�n� basman�z gerekecek. Bunu yapmak i�in padarray
% kullan�n.Daha basit �eyler yapmak i�in s�n�r�n s�f�rlarla
% dolduruldu�unu varsayaca��z.

% Bu nedenle, gri tonlamal� bir image ve bu N x N de�erini analiz etmek i�in
% simetrik bir matris verildi�inde, N, kom�unun geni�li�i /
% y�ksekli�idir
function medianFonksiyonu = kucukAlanMedian(im,N)
im_pad = padarray(im, [floor(N/2) floor(N/2)]);
im_col = im2col(im_pad, [N N], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');%artan s�rada 1.eleman� en b�y�k eleman olur
min_vector = sorted_cols(1, :);
out = col2im(min_vector, [N N], size(im_pad), 'sliding');
imshow(out);
shg();
>>>>>>> origin/master
end