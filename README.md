# Swiss Traffic Project

This the thesis project of Isabelle Pumford at EPFL. It is co-advised by the TRANSOR and RESS laboratories and it's aim is to model traffic over bridges.

Currently there are two main sources of data for the project, circulation traffic data(CSACR) and Weigh-in-Motion(WIM) data. The cirulation data gives vehicles classified in SWISS10 types, vehicle length and speed. The WIM data records the length of large vehicles (>3000kg) and their total weight + axle weight.

Within this project There are currently two python files, one is attempting to read the aggregated circulation data from the ASTRA API and the other is looking at the seasonality of the processed WIM data from the Ceneri station in the years 2014-2016. There is also a Matlab file that converts the processed WIM data from tables to structs so that it can be used in python.