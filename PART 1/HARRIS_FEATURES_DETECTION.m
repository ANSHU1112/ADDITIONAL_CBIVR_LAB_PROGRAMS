srcFiles = dir('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\MATLAB\ASSIGNMENT - 1\*.jpg');
srcFiles;
for i=1:1
    %d = strcat('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\MATLAB\ASSIGNMENT - 1\',srcFiles(i).name);
    %h = strcat('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\MATLAB\ASSIGNMENT - 1\',srcFiles(i+5).name);
    I1 = rgb2gray(imread('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\MATLAB\ASSIGNMENT - 1\4.jpg'));
    I2 = rgb2gray(imread('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\MATLAB\ASSIGNMENT - 1\9.jpg'));
    
    imshow(I1);
    figure, imshow(I2);
    
    points1 = detectHarrisFeatures(I1);
    points2 = detectHarrisFeatures(I2);
    
    [features1,valid_points1] = extractFeatures(I1,points1);
    [features2,valid_points2] = extractFeatures(I2,points2);
    
    indexPairs = matchFeatures(features1,features2);

    matchedPoints1 = valid_points1(indexPairs(:,1),:);
    matchedPoints2 = valid_points2(indexPairs(:,2),:);
    
    figure; showMatchedFeatures(I1,I2,matchedPoints1,matchedPoints2);
end