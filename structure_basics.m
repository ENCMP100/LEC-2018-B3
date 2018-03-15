% This script shows basic functionality of structures
%

clear
clc

% Basic Structures
% ================

% Creating a structure to represent a student record
record = struct('firstName', 'John', ...
                'lastName', 'Smith', ...
                'age', 13, ...
                'grade', 8);
disp(record)           
  
            
% Adding a new field to an existing structure
record.average = 98.2;
disp(record)     


% Creating a structure by specifying one filed at a time
record2 = struct;
record2.firstName = 'John';
record2.lastName = 'Smith';
record2.age = 13;
record2.grade = 8;
record2.average = 98.2;

disp('Record #2:')
disp(record2)    

% Accessing a field in a struture
first = record2.firstName;
disp(first)

% Structure Functions
% ===================

% rmfield

% isstruct

% isfield

% fieldnames



% Nested Structures
% =================


% Accessing properties of a nested structure




% Array of structures
% ===================
% E.g. Write a loop to obtain contact information of 5 persons.
% You should prompt for full name, address and phone number for 
% each person and store them in a struct with appropriate fields.
% Store the list of contacts in an array called contactList.






% Accessing elements in a struture array



% Vectorized access of fields in a structure array



