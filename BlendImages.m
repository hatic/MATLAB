
A=imread('peppers.png');
A=rgb2gray(A);
figure;imshow(A);
Y=imnoise(A,'salt & pepper',0.5);
figure;imshow(Y);
[n,m]=size(A);
%median filter
for i=1:n
   for j=1:m
        mat=zeros(3,3);
        if((i-1) == 0 && (j-1) ~= 0 && j~=m)
            mat(2:3,1:3)=Y(i:i+1,j-1:j+1);
            mat=sort(mat,1);
            mat=sort(mat,2);
            Y(i,j)=mat(2,2);
       elseif(i==n && (j-1)~=0 && j~=m)
            mat(1:2,:)=Y(i-1:i,j-1:j+1);
            mat=sort(mat,1);
            mat=sort(mat,2);
            Y(i,j)=mat(2,2);
       elseif((i-1)~=0 &&(j-1)~=0 && j~=m && i~=n)
            mat(:,:)=Y(i-1:i+1,j-1:j+1);
            mat=sort(mat,1);
            mat=sort(mat,2);
            Y(i,j)=mat(2,2);
        elseif((j-1)==0 && (i-1)~=0 && i~=n)
            mat(:,2:3)=Y(i-1:i+1,j:j+1);
            mat=sort(mat,1);
            mat=sort(mat,2);
            Y(i,j)=mat(2,2);
        elseif(j==m && (i-1)~=0 && i~=n)
            mat(:,1:2)=Y(i-1:i+1,j-1:j);
            mat=sort(mat,1);
            mat=sort(mat,2);
            Y(i,j)=mat(2,2);
        end
    end
end

figure;
imshow(Y)