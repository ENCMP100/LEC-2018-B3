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

recordUpdated = rmfield(record, 'age');


% isstruct

% isfield

% fieldnames



% Nested Structures
% =================
name = struct('first', 'John', 'last', 'Smith');            
record = struct('name', name, ...
                'age', 13, ...
                'grade', 8);
disp('record:')
disp(record)
            
record2 = struct('name', struct('first', 'John', 'last', 'Smith'), ...
                'age', 13, ...
                'grade', 8);
disp('record2:')
disp(record2)
            
            
% Accessing properties of a nested structure

firstName = record.name.first;
disp(firstName)



% Array of structures
% ===================
% E.g. Write a loop to obtain contact information of 5 persons.
% You should prompt for full name, address and phone number for 
% each person and store them in a structure with appropriate fields.
% Store the list of contacts in an array called contactList.

% Prealloating an array for contat list
numContacts = 5;
template = struct('name', '', ...
    'address', '', ...
    'phone', ''); % define the structure with dummy field values

contactList = repmat(template, numContacts, 1); % pre-allocating array
for i = 1:numContacts
    contact = struct; % creating a new empty structure to store the details

    contact.name = input('Full name: ',  's');
    contact.address = input('Address: ', 's');
    contact.phone = input('Phone: ', 's');
    
    contactList(i) = contact;
end


% Accessing elements in a struture array
name1 = contactList(1).name;


% Vectorized access of fields in a structure array



