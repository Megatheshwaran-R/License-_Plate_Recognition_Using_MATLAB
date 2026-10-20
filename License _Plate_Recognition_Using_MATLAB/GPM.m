[path file] = uigetfile('*.jpg','Select Image');
img = imread(fullfile(file,path));
figure;
imshow(img);  
title('Original Image');
img2 = rgb2gray(img);
imgX = edge(img2,'sobel','horizontal');
imgY = edge(img2,'sobel','vertical');
img3 = imgX|imgY;
img3 = bwareaopen(img3, 700);
se = strel('line',2,90);
img3 = imdilate(img3,se);
se = strel('line',2,0);
img3 = imdilate(img3,se);
img4 = imfill(img3,'holes');
img4 = bwmorph(img4,'thin',1);
se = strel('line',5,90);
img5 = imerode(img4,se);
img5 = imerode(img5,se);
img6 = immultiply(img2,img5);
verticalProfile = sum(img6, 2);
row1 = find(verticalProfile, 1, 'first');
row2 = find(verticalProfile, 1, 'last');
horizontalProfile = sum(img6, 1);
column1 = find(horizontalProfile, 1, 'first');
column2 = find(horizontalProfile, 1, 'last');
img7 = img6(row1-1:row2+1, column1-1:column2+1);
img7 = ~im2bw(img7);
figure;
imshow(img7);
title('Detected Number Plate');
imgProp = regionprops(img7,'BoundingBox','Image');
x=1;
im0=imread('C:\Users\HP\Desktop\Numbers_jpg\0.jpg');
im1=imread('C:\Users\HP\Desktop\Numbers_jpg\1.jpg');
im2=imread('C:\Users\HP\Desktop\Numbers_jpg\2.jpg');
im3=imread('C:\Users\HP\Desktop\Numbers_jpg\3.jpg');
im4=imread('C:\Users\HP\Desktop\Numbers_jpg\4.jpg');
im5=imread('C:\Users\HP\Desktop\Numbers_jpg\5.jpg');
im6=imread('C:\Users\HP\Desktop\Numbers_jpg\6.jpg');
im7=imread('C:\Users\HP\Desktop\Numbers_jpg\7.jpg');
im8=imread('C:\Users\HP\Desktop\Numbers_jpg\8.jpg');
im9=imread('C:\Users\HP\Desktop\Numbers_jpg\9.jpg');

imA=imread('C:\Users\HP\Desktop\Aphabets_jpg\A.jpg');
imB=imread('C:\Users\HP\Desktop\Aphabets_jpg\B.jpg');
imC=imread('C:\Users\HP\Desktop\Aphabets_jpg\C.jpg');
imD=imread('C:\Users\HP\Desktop\Aphabets_jpg\D.jpg');
imE=imread('C:\Users\HP\Desktop\Aphabets_jpg\E.jpg');
imF=imread('C:\Users\HP\Desktop\Aphabets_jpg\F.jpg');
imG=imread('C:\Users\HP\Desktop\Aphabets_jpg\G.jpg');
imH=imread('C:\Users\HP\Desktop\Aphabets_jpg\H.jpg');
imI=imread('C:\Users\HP\Desktop\Aphabets_jpg\I.jpg');
imJ=imread('C:\Users\HP\Desktop\Aphabets_jpg\J.jpg');
imK=imread('C:\Users\HP\Desktop\Aphabets_jpg\K.jpg');
imL=imread('C:\Users\HP\Desktop\Aphabets_jpg\L.jpg');
imM=imread('C:\Users\HP\Desktop\Aphabets_jpg\M.jpg');
imN=imread('C:\Users\HP\Desktop\Aphabets_jpg\N.jpg');
imO=imread('C:\Users\HP\Desktop\Aphabets_jpg\O.jpg');
imP=imread('C:\Users\HP\Desktop\Aphabets_jpg\P.jpg');
imQ=imread('C:\Users\HP\Desktop\Aphabets_jpg\Q.jpg');
imR=imread('C:\Users\HP\Desktop\Aphabets_jpg\R.jpg');
imS=imread('C:\Users\HP\Desktop\Aphabets_jpg\S.jpg');
imT=imread('C:\Users\HP\Desktop\Aphabets_jpg\T.jpg');
imU=imread('C:\Users\HP\Desktop\Aphabets_jpg\U.jpg');
imV=imread('C:\Users\HP\Desktop\Aphabets_jpg\V.jpg');
imW=imread('C:\Users\HP\Desktop\Aphabets_jpg\W.jpg');
imX=imread('C:\Users\HP\Desktop\Aphabets_jpg\X.jpg');
imY=imread('C:\Users\HP\Desktop\Aphabets_jpg\Y.jpg');
imZ=imread('C:\Users\HP\Desktop\Aphabets_jpg\Z.jpg');

cnt=0;
out='';
for i = 1 : size(imgProp)
    this = imgProp(i).BoundingBox;
    if(this(3)>=15 &&this(4)>=30 && this(3)<=80 &&this(4)<=160)
    temp = ~imgProp(i).Image; 
    temp=imresize(temp,[40,20]);
    imwrite(temp,'C:\Users\HP\Desktop\temp_jpg\temp.jpg');
    imgTest =imread('C:\Users\HP\Desktop\temp_jpg\temp.jpg');
    img = imabsdiff(imA,imgTest);
    rectangle('position',this,'EdgeColor','r');
    minDiff = sum(img(:));
    cnt=cnt+1;
    ch = 'A';
    if cnt==1 || cnt==2 || cnt==6 || cnt==5
        img = imabsdiff(imB,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='B';
        end
       img = imabsdiff(imC,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='C';
        end
        img = imabsdiff(imD,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='D';
        end
        img = imabsdiff(imE,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='E';
        end
        img = imabsdiff(imF,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='F';
        end
        img = imabsdiff(imG,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='G';
        end
        img = imabsdiff(imH,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='H';
        end
        img = imabsdiff(imI,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='I';
        end
        img = imabsdiff(imJ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='J';
        end
        img = imabsdiff(imK,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='K';
        end
        img = imabsdiff(imL,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='L';
        end
        img = imabsdiff(imM,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='M';
        end
        img = imabsdiff(imN,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='N';
        end
        img = imabsdiff(imO,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='O';
        end
        img = imabsdiff(imP,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='P';
        end
        img = imabsdiff(imQ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Q';
        end
        img = imabsdiff(imR,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='R';
        end
        img = imabsdiff(imS,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='S';
        end
        img = imabsdiff(imT,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='T';
        end
        img = imabsdiff(imU,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='U';
        end
        img = imabsdiff(imV,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='V';
        end
        img = imabsdiff(imW,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='W';
        end
        img = imabsdiff(imX,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='X';
        end
        img = imabsdiff(imY,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Y';
        end
        img = imabsdiff(imZ,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='Z';
        end
    else
        img = imabsdiff(im0,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='0';
        end
        img = imabsdiff(im1,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='1';
        end
        img = imabsdiff(im2,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='2';
        end
        img = imabsdiff(im3,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='3';
        end
        img = imabsdiff(im4,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='4';
        end
        img = imabsdiff(im5,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='5';
        end
        img = imabsdiff(im6,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='6';
        end
        img = imabsdiff(im7,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='7';
        end
        img = imabsdiff(im8,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='8';
        end
        img = imabsdiff(im9,imgTest);
        if(sum(img(:))<minDiff)
        minDiff= sum(img(:));
        ch='9';
        end   
     end
     out=strcat(out,ch);
   end
end

msgbox(strcat('Vehicle Registraction Number :',out));