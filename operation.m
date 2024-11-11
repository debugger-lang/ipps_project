classdef operation
    % Class for machines, tools, and tad properties
    properties
        machines % Array for machines
        tools    % Array for tools
        tad      % Array for tad
    end
    
    methods
        % Constructor to initialise the arrays
        function obj = operation(machinesArray, toolsArray, tadArray)
            if nargin > 0 % Check if input arguments are provided
                obj.machines = machinesArray;
                obj.tools = toolsArray;
                obj.tad = tadArray;
            end
        end
       
    end
end