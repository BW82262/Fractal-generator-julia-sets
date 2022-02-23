function [colourNames, colourValues] = ReadColourValues(FileInput)
%Purpose of this function is to pull colour values from a Text file.
%Inputs:    FileInput, the file used to obtain the colours and its
%           respective RGB values.
%Outputs:   colourNames, a cell array containing all the colour names in
%           text file.
%           colourValues, the colour's RGB values, following the respective
%           order of colourNames.

%Opening the file with the permission of reading a text file.
fid = fopen(FileInput,'rt');

%If statement to inform the user there is an error with opening the file.
if fid == -1 
    %Dislaying an error message with opening the file.
    fprintf(2,'Error opening file %s \n \n',FileInput)    
else
    %Gets a new line of information from the text file.
    line = fgetl(fid);
    %Variable to count each time the loop is ran.
    count = 1;
    %While loop to read every line of the text file to extract information.
    while (ischar(line))
        %Using the split command, it separates each string by spaces.
        %Storing the split strings into a separate cell array.
        storage = split(line);
        
        %Storing the name of the variable in a cell array.
        colourNames{count,1} = storage{1};
        
        %Storing the colour values in a matrix
        colourValues(count, 1) = str2num(storage{2});
        colourValues(count, 2) = str2num(storage{3});
        colourValues(count, 3) = str2num(storage{4});
        
        %Adds 1 each time the loop is ran. Used to access new rows for the
        %cell array and matrix.
        count = count + 1;
        %Gets a new line of text.
        line = fgetl(fid);
        
    end
    %Closing the file.
    fclose(fid)
end

end