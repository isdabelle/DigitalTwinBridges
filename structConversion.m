% Modifying the tables so that they are saved as structs

%first load the tables
% Ceneri408 = importdata('Ceneri408_2017.mat');
% Ceneri409 = importdata('Ceneri409_2017.mat');
% 
% Ceneri408_struct = struct('table', struct(Ceneri408), 'columns', {struct(Ceneri408).varDim.labels});
% save('Ceneri408_struct.mat', 'Ceneri408_struct')
% 
% Ceneri409_struct = struct('table', struct(Ceneri409), 'columns', {struct(Ceneri409).varDim.labels});
% save('Ceneri409_struct.mat', 'Ceneri409_struct')

%For each year in Ceneri import the matrix and make a struct from it
for year = 2011:2017
    data = importdata(sprintf('Ceneri_%d.mat', year));
    Ceneri_struct = struct('table', struct(data), 'columns', {struct(data).varDim.labels});
    save(sprintf('Ceneri_%d_struct.mat', year), 'Ceneri_struct')
end 