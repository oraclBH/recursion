
clc; clear; close all;

% dta = [1,2,3,4,5,6,7,8,9,10];
dta = 1:200;
sum_Data = recursiveReduce(dta, 200);
disp(sum_Data);


function  smout = recursiveReduce(data, size)

if size ==1
    smout = data(1);
    return;
else
    if mod(size, 2)==0   % An even number of arrays
        stride = floor(size/2);
        for i = 1:stride
            data(i) = data(i) + data(i+stride);
        end
        smout = recursiveReduce(data, stride);
    else
         stride = ceil(size/2);
         data(stride*2) = 0;
         for i = 1:stride
            data(i) = data(i) + data(i+stride);
        end
        smout = recursiveReduce(data, stride);
    end
        
end

end


