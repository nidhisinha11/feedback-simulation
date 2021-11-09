%Author: Nidhi Sinha
%This code calculates the value of s(t)
%input: time
%output: either 0 or 1 depending on the time
function [output] = s(t)
    if t <= 0
        output = 0;
    else
        output = 1; 
    end
end 