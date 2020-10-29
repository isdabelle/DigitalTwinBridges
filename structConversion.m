% Modifying the tables so that they are saved as structs
% Also running the processed data matrices through the classified to obtain
% the truck classification of each vehicle


%For each year in Ceneri import the matrix and make a struct from it

station = "Gotthard";

start_y = 2018; end_y = 2019;

for year = start_y:end_y
    data = importdata(sprintf('%s_%d.mat', station, year));
    %Classification of the processed dataS
    data_classified = Classify(data);
    Gotthard_struct = struct('table', struct(data_classified), 'columns', {struct(data_classified).varDim.labels});
    save(sprintf('%s_%d_struct.mat', station, year), sprintf('%s_struct', station))
end 