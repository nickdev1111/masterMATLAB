function out = edgy(img)
    tmp=zeros(size(img,1)-2,size(img,2)-2);
    for ii=2:size(img,1)-1
        for jj=2:size(img,2)-1
            s_x=sum([-1 0 1;-2 0 2;-1 0 1].*double(img(ii-1:ii+1,jj-1:jj+1)),"all");
            s_y=sum([1 2 1;0 0 0;-1 -2 -1].*double(img(ii-1:ii+1,jj-1:jj+1)),"all");
            tmp(ii-1,jj-1)=sqrt(s_x^2+s_y^2);
        end
    end
    out=uint8(tmp);
end