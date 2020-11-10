clear
clc
close all
format long g

dir_name = '137/';

%%
dd = dir(sprintf('%s*.log', dir_name));

fileNames = {dd.name}; 

for ii = 1:numel(fileNames)    
    rd = importCOUNTLOGfile(fileNames{ii}, 2, 100000);

    rd.Speed(isnan(rd.Speed)) = 50;
    rd.Time = rd.h + rd.m/60 + rd.s/3600 + rd.ms/360000;

    save(sprintf('%s%s', dir_name, fileNames{ii}(1:end-4)),'rd')
end



%%

for i = 1:numel(fileNames)

    load(sprintf('%s%s', dir_name, fileNames{i}(1:end-4)));

    if i == 1
        rdm = rd;
    else
        rdm = [rdm;rd];
    end
    
end
%%
year_file = 'CH137_2017';
save('CH137_2017','rdm', '-v7.3');

%%

%Here the .mat is converted into a struct so that it can be interpreted by
%the python code
year_file = 'CH137_2017';

station = '137';
year = '2017';

data = importdata(sprintf('%s%s.mat', dir_name, year_file));
circ_struct = struct('table', struct(data), 'columns', {struct(data).varDim.labels});
save(sprintf('%s_%s_struct.mat', station, year), 'circ_struct', '-v7.3')
