function [ImageArray] = GenerateJuliaSets(cvalues,n,colourmap)
%Purpose of this function is to take a complex values and convert them into
%cell arrays for each complex value with the JuliaSet image. This function
%will call some of the other functions.
%Inputs:    cvalues, a 1D array of complex values to generate JuliaSet
%           fractals.
%           n, the size of the array, n number of rows and columns.
%           colourmap, a 2D array describing the starting colours with its
%           RGB values and all the shades between them till the ending
%           colour.
%Outputs:   ImageArray, a cell array containing a RGB image in each element
%           for each complex value in the cvalues array.

%Stays the same size regardless of input. Only depends on n value.
grid = CreateComplexGrid(n); 

%The number of rows of the colour map will determine the cutoff point.
SizeOfColourMap = size(colourmap);
cutoff = SizeOfColourMap(1);

%For loop to create the JuliaSet image for the corresponding complex value
%and storing that image in a cell array.
for i = 1:length(cvalues)
    %Accessing each value of the complex sequence
    cvalues(i) ;
    %Using the JuliaSetPoints function to create the points with number of
    %iterations for each complex value.
    points = JuliaSetPoints(grid,cvalues(i),cutoff);
    %Assigning the colour values for each complex value.
    ColourArray = ColourJulia(points,colourmap);
    
    %Storing the image in the cell array.
    ImageArray{i} = ColourArray;

end

end