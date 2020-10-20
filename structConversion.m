% Modifying the tables so that they are saved as structs
% Also running the processed data matrices through the classified to obtain
% the truck classification of each vehicle


%For each year in Ceneri import the matrix and make a struct from it

for year = 2011:2017
    data = importdata(sprintf('Gotthard_%d.mat', year));
    %Classification of the processed data
    data_classified = Classify(data);
    Gotthard_struct = struct('table', struct(data_classified), 'columns', {struct(data_classified).varDim.labels});
    save(sprintf('Gotthard_%d_struct.mat', year), 'Gotthard_struct')
end 