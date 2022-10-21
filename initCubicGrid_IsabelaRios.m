function [coords, L] = initCubicGrid(nPart,density)
    %First set the matrix with zeros 
    coords = zeros([3,nPart]);

    %extract the dimensions of the box and the distance between each dot 
    L = (nPart/density)^(1/3);
    l_side = nPart^(1/3)

    %set function for values of the coordinates 
    x_coords = [0.5:l_side]*L/l_side;
    y_coords = x_coords;
    z_coords = x_coords;

    %3-D grid coordinates defined by the vectors x, y, and z. 
    %The grid represented by X, Y, and Z 
    %has size length(y)-by-length(x)-by-length(z)
    [X,Y,Z] = meshgrid(x_coords,y_coords,z_coords);
    
    %Loop over coordinates to establish the positions in matrix
    for X = X(:)
        for Y = Y(:)
            for Z = Z(:)
                 coords = [X';Y';Z'];
            end
        end
    end
    
   
end