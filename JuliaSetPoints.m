function [points] = JuliaSetPoints(grid,c,cutoff)
%Purpose of this function is to determine whether or not each point of the
%complex grid is a member of the Julia set.
%Inputs:    grid, the complex grid generate from the CreateComplexGrid 
%           function, with imaginary and real values in a matrix.
%           c, a specificed complex value used to generate the JuliaSet.
%           cutoff, the maximum number of iterations to perform.
%Outputs:   points, a 2D array describing the nature of each point on the
%           grid. Uses the IterateComplexQuadratic function for each
%           complex value on the grid & the c value. Each value within the
%           points array indicates the number of iterations needed to be
%           equal to 3, if it reaches the cutoff value, it will be assigned
%           a zero value.

%Determining the size of the input matrix
Dimensions = size(grid);

%Nested for loop with the size dependent on the matrix.
%The outer loop goes across the matrix, the inner loop goes down the
%matrix.
for i = 1:Dimensions(2)
    for j = 1:Dimensions(1)
        %z variable being the complex value from the Complex grid we made
        z = grid(j,i);
        
        %Using the function IterateComplexQuadraticFunction
        NumberOfIterations = IterateComplexQuadratic(z,c,cutoff);
        
        %Conditional statement to determine if the number of iteriates
        %exceed the cutoff value, if so give it a zero, else have the
        %number of iterations
        if NumberOfIterations > cutoff
            points(j,i) = 0;
        else
            points(j,i) = NumberOfIterations;
        end
    end
end

end

