function [ output_string ] = wordcase( input_string )
%WORD_CASE Capitalise first letter of each word.
%   word_case('hello world')
%   > 'Hello World'
%
% Inspired by: http://stackoverflow.com/a/2319064/97073

if isnumeric( input_string )
 input_string = num2str( input_string );
end
  input_string = lower(input_string);
  %output_string = regexprep(input_string,'(\<[a-z])','${upper($1)}') ;
  output_string = regexprep(input_string,'(\<\w)','${upper($1)}','ignorecase') ;
  
end

