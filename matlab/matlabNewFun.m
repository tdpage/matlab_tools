function [] = matlabNewFun(varargin)
%
% matlabNewFun:
%   Wrapper function for system bash script matlabnewfun
%
% Usage:
%   [] = matlabNewFun();
%
% Inputs:
%       'o' | 'Output'      : Output filename
%       'd' | 'Directory'   : Output directory
%       'i' | 'Inputs'      : Input list
%       'r' | 'Returns'     : Return list
%       'D' | 'Description' : Description for header block
%       'c' | 'Comment'     : Comment for header block
%
% Outputs: 
%
% Comments:
% inputs use the "matched-pair" parameter system.
%

% default string to execute. 
execstr = 'matlabnewfun';

% scan the arguments for optional parameters
% and add them to the execution string
for i = 1:2:nargin
    if (strcmp('o', varargin{i}) || ...
        strcmp('Output', varargin{i}))
        execstr = strcat(execstr, " -o ", varargin{i+1});

    elseif (strcmp('d', varargin{i}) || ...
        strcmp('Directory', varargin{i}))
        execstr = strcat(execstr, " -d ", varargin{i+1});
    
    elseif (strcmp('i', varargin{i}) || ...
        strcmp('Inputs', varargin{i}))
        execstr = strcat(execstr, " -i ", varargin{i+1});
    
    elseif (strcmp('r', varargin{i}) || ...
        strcmp('Returns', varargin{i}))
        execstr = strcat(execstr, " -r ", varargin{i+1});
        
    elseif (strcmp('D', varargin{i}) || ...
        strcmp('Description', varargin{i}))
        execstr = strcat(execstr, " -D ", varargin{i+1});    
        
    elseif (strcmp('c', varargin{i}) || ...
        strcmp('Comment', varargin{i}))
        execstr = strcat(execstr, " -c ", varargin{i+1});
    
    else (strcmp('h', varargin{i}) || ...
        strcmp('Help', varargin{i}))
        execstr = strcat('matlabnewfun', " -h ");
        break
    end
end

system(execstr);
end
