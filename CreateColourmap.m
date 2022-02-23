function [colour] = CreateColourmap(Start,End,n)
%Purpose of this function is to create a colour map with n number of rows
%with different shades from the starting colour to the ending colour.
%Inputs:    Start, the RGB values for the starting colour.
%           End, the RGB values for the ending colour.
%           n, the number of rows for the colour map array.
%Outputs:   colour, n*3 array with the different shades from the starting
%           colour to the ending colour. The numbers in the arrays 
%           represent the percentage of Red, Green and Blue for each row.

%Defining the step sizes.
StartEnd(1) = (End(1)-Start(1))/(n-1);
StartEnd(2) = (End(2)-Start(2))/(n-1);
StartEnd(3) = (End(3)-Start(3))/(n-1);

%Nested for loop to assign each row its value.
for i = 1:3
    for j = 1:n
        %The value of each colour is dependent on which column its in and
        %the step its on.
        colour(j,i) = Start(i) + StartEnd(i)*(j-1);
    end
end

end