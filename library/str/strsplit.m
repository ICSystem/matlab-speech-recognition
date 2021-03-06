function out = strsplit(strarr,ch)
%function cstr = strsplit(strarr, ch)
%
% FUNCTIONALITY
% Splits string <strarr> at positions where substring <ch>
% occurs. If <ch> is not given, then ascii character 10
% (newline) is the splitting position.
% This would split for example a read-in file into its lines.
%
% INPUT
%   strarr     string to split
%   ch         optional, character or substring at which to split,
%              default is character ascii 10 = 'newline'
%
% OUTPUT
%   cstr       cell array of strings, all leading and trailing
%              spaces are deleted. Substring ch is removed from string.
%
% EXAMPLES
%   a = strsplit('aaa bbb ccc ', ' ')
%   Result: a{1}='aaa', a{2}='bbb', a{3}='ccc'
%   a = strsplit('user@server', '@')
%   Result: a{1}='user', a{3}='server'
%   a = strsplit('aabbccddeeffgg', 'dd')
%   Result: a{1}='aabbcc', a{2} = 'eeffgg'
%
%  modified based on strsplit.m by KH. 20100930.

 

outtmp=regexp(strarr,ch,'split');
cnt=1;
out=[];
for ii=1:length(outtmp)
    if ~isempty(outtmp{ii})
        out{cnt}=outtmp{ii};
        cnt=cnt+1;
    end
end
