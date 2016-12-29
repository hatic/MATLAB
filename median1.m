function medianOrt = ortalama(image)
im_pad = padarray(image, [1 1]);
im_col = im2col(im_pad, [3 3], 'sliding');
sorted_cols = sort(im_col, 1, 'ascend');
med_vector = sorted_cols(floor(3*3/2) + 1, :);
out = col2im(med_vector, [3 3], size(im_pad), 'sliding');
imshow(out);
end

