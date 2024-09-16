function test_network(net, image)

    I = imread(image);
    G = imresize(I, [224, 224]); 

    [Label, prob] = classify(net, G);

    figure;  
    imshow(G);
    title({char(Label), num2str(max(prob), 2)});
end