<<<<<<< HEAD
% Medfilt2 fonksiyonundan farklı olarak komşularından küçük değere sahip  
% olanı getirdik bu yüzden resim siyaha yakın oldu

function medianFonksiyonu = kucukAlanMedian(im,N)
im_pad = padarray(im, [floor(N/2) floor(N/2)]);
im_col = im2col(im_pad, [N N], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');%artan sırada 1.elemanı en büyük eleman olur
min_vector = sorted_cols(1, :);
out = col2im(min_vector, [N N], size(im_pad), 'sliding');
imshow(out);
shg();
=======
% Medfilt2 fonksiyonundan farklı olarak komşularından küçük değere sahip  
% olanı getirdik bu yüzden resim siyaha yakın oldu
% Her piksel komşusunu tek bir sütun vektörüne dönüştürmek
% için im2col kullandık ve tek bir matris oluşturmak için bu sütun
% vektörlerinin tümünü aldık. Her sütun bir piksel komşusu içindeki
% piksel yoğunluklarını temsil eder. Sonra, her sütunu sırala
% ve bu sıralanmış matrisin en küçüğünü tut. Bu, her piksel
% komşusunun medyan değerini temsil eden tek sıra vektör olacaktır.
% medyan filtrelenmiş sonucu almak için col2im ile bu vektörü
% orijinal görüntüyle aynı boyuta getirdik.

% Bununla birlikte, im2col ile, yalnızca orijinal görüntünün sınırları
% içerisindeki piksel komşularını kavrar. Filtre piksellerini görüntünün
% kenarlarına ortalamak isteyeceksiniz, im2col ile işlemeden önce resim
% kenarlıklarını basmanız gerekecek. Bunu yapmak için padarray
% kullanın.Daha basit şeyler yapmak için sınırın sıfırlarla
% doldurulduğunu varsayacağız.

% Bu nedenle, gri tonlamalı bir image ve bu N x N değerini analiz etmek için
% simetrik bir matris verildiğinde, N, komşunun genişliği /
% yüksekliğidir
function medianFonksiyonu = kucukAlanMedian(im,N)
im_pad = padarray(im, [floor(N/2) floor(N/2)]);
im_col = im2col(im_pad, [N N], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');%artan sırada 1.elemanı en büyük eleman olur
min_vector = sorted_cols(1, :);
out = col2im(min_vector, [N N], size(im_pad), 'sliding');
imshow(out);
shg();
>>>>>>> origin/master
end