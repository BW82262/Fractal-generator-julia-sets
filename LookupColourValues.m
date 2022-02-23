function [ColourOutputs] = LookupColourValues(colour,colourNames, colourValues)
%Purpose of this function is to lookup the colour values associated with
%the colour name inputted by the user.
%Inputs:    colour, colour, n*3 array with the different shades from the 
%           starting colour to the ending colour.
%           colourNames, the name of the colour to be compared with.
%           colourValues, the colour's RGB values, following the respective
%           order of colourNames.
%Outputs:   ColourOutputs, a 1 by 3 row array containing the RGB values for
%           the colour inputted by the user. If there is no match, and
%           error code will be shown and the ColourOutputs will be zeros.

position = 0;
%For loop to compare each element of the cell array of colour names with
%the input colour from the user.
for i = 1:length(colourNames)
    %strcmpi used to compare the input & the string in the cell array
    compare = strcmpi(colour,colourNames{i});
    %If statement to indicate that the position of input is found in which
    %element of the cell array.
    if compare == 1
        position = i;
    end
end

%If statement to determine whether or not there is a match in the input
%string and the strings in the cell array.
if position > 0
    %If there is a match, it will assign the colours values
    ColourOutputs([1:3]) = colourValues(position,:);
else
    %If there is not a match, an error code will be displayed and the
    %outputs will all be zero.
    fprintf(2,'Colour not found \n \n');
    ColourOutputs([1:3]) = 0;
end

end