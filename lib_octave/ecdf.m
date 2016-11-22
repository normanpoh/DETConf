function [pdf,x] = ecdf(data)
if (size(data,2) ~= 1)
    error('data is not one column\n');
end;
x = sort(data);
pdf = 1:size(data,1);
pdf = pdf /size(data,1);
