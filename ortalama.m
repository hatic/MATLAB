<<<<<<< HEAD
% Medyan filtrelemenin temel önceliği, resminizdeki piksel komşularını
% analiz etmek, yoğunluklarını sıralamak, daha sonra orta yoğunluğu
% seçmektir. Her piksel komşusunu tek bir sütun vektörüne dönüştürmek
% için im2col kullandık ve tek bir matris oluşturmak için bu sütun
% vektörlerinin tümünü aldık. Her sütun bir piksel komşusu içindeki
% piksel yoğunluklarını temsil eder. Sonra, her sütunu sırala
% ve bu sıralanmış matrisin ortasını tut. Bu, her piksel
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
function medianFonksiyonu = ortalama(image,N)
im_pad = padarray(image, [floor(N/2) floor(N/2)]);
im_col = im2col(im_pad, [N N], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');
med_vector = sorted_cols(floor(N*N/2) + 1, :);
out = col2im(med_vector, [N N], size(im_pad), 'sliding');
imshow(out);
shg();
=======
% medfilt2 yerine kullanılabilecek fonksiyon
% Medyan filtrelemenin temel önceliği, resminizdeki piksel komşularını
% analiz etmek, yoğunluklarını sıralamak, daha sonra orta yoğunluğu
% seçmektir. Her piksel komşusunu tek bir sütun vektörüne dönüştürmek
% için im2col kullandık ve tek bir matris oluşturmak için bu sütun
% vektörlerinin tümünü aldık. Her sütun bir piksel komşusu içindeki
% piksel yoğunluklarını temsil eder. Sonra, her sütunu sırala
% ve bu sıralanmış matrisin ortasını tut. Bu, her piksel
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
function medianFonksiyonu = ortalama(image,N)
im_pad = padarray(image, [floor(N/2) floor(N/2)]);
im_col = im2col(im_pad, [N N], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');
med_vector = sorted_cols(floor(N*N/2) + 1, :);
out = col2im(med_vector, [N N], size(im_pad), 'sliding');
imshow(out);
shg();
>>>>>>> origin/master
end