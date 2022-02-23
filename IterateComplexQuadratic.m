function [NumberOfIterations] = IterateComplexQuadratic(z,c,cutoff)
%The purpose of this function is to count the number of iterations till the
%absolute value of z is equal or more than 3
%Inputs:    z, the complex number the iteration begins with.
%           c, a specificed complex value used to generate the JuliaSet.
%           cutoff, the maximum number of iterations to perform.
%Outputs:   NumberOfIterations, the number of iterations it takes for the
%           complex value to become greater or equal to 3, if it reaches 
%           the cutoff value, it will be assigned a zero value.

%Defining the variable to count
NumberOfIterations = 0;
%Conditional variable for the while loop
status = true;

%While loop to iterate the values and count
while status 
    z = z^2 + c;
    NumberOfIterations = NumberOfIterations + 1;
    %Conditional statement to determine whether any end points has been
    %reached
    if (abs(z) >= 3) 
        status = false;   
    elseif (NumberOfIterations == cutoff)
        NumberOfIterations = 0;
        status = false;
    end
end

end