function [ColourArray] = ColourJulia(points,colourmap)
%Purpose of this function is to assign the colour values to the points
%matrix depending on their value from the JuliaSetPoints function.
%Inputs:    points, a 2D array describing the nature of each point on the
%           grid. Uses the IterateComplexQuadratic function for each
%           complex value on the grid & the c value.
%           colourmap, a 2D array describing the starting colours with its
%           RGB values and all the shades between them till the ending
%           colour.
%Outputs:   ColourArray, a 3D array with different colour values within the
%           array depending on the points value. Each value from the points
%           2d array will indicate which row of the colours RBG values will
%           be in each position for the image.

%Finding the size of the input array, points, from JuliaSetPoints.m
SizeOfArray = size(points);
%Defining the uint8 RGB array
ColourArray = zeros(SizeOfArray(1),SizeOfArray(2),'uint8');

%Nested for loop to go through every array element and assigning colours 
%depending on the value from points input.
for i = 1:SizeOfArray(2)
    for j = 1:SizeOfArray(1)
        %If statement to determine if the colour should be black or not.
        if points(j,i) == 0
            ColourArray(j,i,:) = 0;
        else
            %Assigning each element of the 3D array values depending on the
            %points input, then selecting which row from the colour map
            %input. Rounding and multiplying the values for uint8 colour.
            ColourArray(j,i,1) = round(colourmap(points(j,i),1) * 255);
            ColourArray(j,i,2) = round(colourmap(points(j,i),2) * 255);
            ColourArray(j,i,3) = round(colourmap(points(j,i),3) * 255);
        end 
    end
end     
end