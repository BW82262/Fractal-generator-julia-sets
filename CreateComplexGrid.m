function [grid] = CreateComplexGrid(n)
%Purpose of this function is to create a grid for complex numbers.
%Inputs:    n, the size of the array, n number of rows and columns.
%Outputs:   grid, a grid of complex values depending on the value of n. 
%           Starting from -2 to 2 in the real and imaginary directions.

%Defining the starting position with respect to how the matrix is read
RealStartPosition = -2;
RealStep = 4/(n-1);
ImaginaryStartPosition = 2;
ImaginaryStep = -4/(n-1);

%Nested for loop to place each complex value in the matrix
%The outer loop is to go across the columns
for i = 1:n
    %The inner loop is used to go down the rows
    for j = 1:n
        %Defining 'z' as the complex number. Can't put a real and imaginary
        %value into a matrix
        z = complex((RealStartPosition + RealStep*(i-1)),(ImaginaryStartPosition + ImaginaryStep*(j-1)));
        grid(j,i) = z;
    end
end

end
