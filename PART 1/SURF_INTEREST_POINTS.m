srcFiles = dir('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\MATLAB\ASSIGNMENT - 1\*.jpg');
srcFiles;
for i=1:5
    d = strcat('C:\Users\PRIYANSHU SHARMA\Desktop\PRIYANSHU\6 STUDY\MATLAB\ASSIGNMENT - 1\',srcFiles(i).name);
    di = imread(d);
    g = rgb2gray(di);
    figure, imshow(g);
    points = detectSURFFeatures(g);
    imshow(g); 
    hold on;
    plot(points.selectStrongest(10));
end