rng('shuffle'); % Set a different seed for each session

schedules=  [1,  2,  3,  4,  5,  9, 10, 11, 13, 14; 1,  2,  3,  4,  5,  9, 10, 12, 13, 14; 1,  2,  3,  4,  5, 10,  9, 11, 13, 14; 1,  2,  3,  4,  5, 10,  9, 12, 13, 14; 1,  2,  6,  7,  8,  9, 10, 11, 13, 14; 1,  2,  6,  7,  8,  9, 10, 12, 13, 14; 1,  2,  6,  7,  8, 10,  9, 11, 13, 14; 1,  2,  6,  7,  8, 10,  9, 12, 13, 14 ;15, 16, 17, 18, 19, 20, 22, 23, 24, 25; 15, 16, 17, 18, 19, 20, 22, 23, 25, 24; 15, 16, 17, 18, 19, 20, 23, 22, 24, 25; 15, 16, 17, 18, 19, 20, 23, 22, 25, 24; 15, 16, 17, 18, 19, 21, 22, 23, 24, 25; 15, 16, 17, 18, 19, 21, 22, 23, 25, 24; 15, 16, 17, 18, 19, 21, 23, 22, 24, 25; 15, 16, 17, 18, 19, 21, 23, 22, 25, 24; 15, 16, 18, 19, 17, 20, 22, 23, 24, 25; 15, 16, 18, 19, 17, 20, 22, 23, 25, 24; 15, 16, 18, 19, 17, 20, 23, 22, 24, 25; 15, 16, 18, 19, 17, 20, 23, 22, 25, 24; 15, 16, 18, 19, 17, 21, 22, 23, 24, 25; 15, 16, 18, 19, 17, 21, 22, 23, 25, 24; 15, 16, 18, 19, 17, 21, 23, 22, 24, 25; 15, 16, 18, 19, 17, 21, 23, 22, 25, 24]; %24
%24 schedules

% Create the 25 operation objects using the data from the table

% Operation 1 (Turning OP1)
machines1 = [1, 2, 3];
tools1 = [1, 2];
tad1 = 3; % +z

operation1 = operation(machines1, tools1, tad1);

% Operation 20 (Milling OP20)
machines20 = [4, 5, 6];
tools20 = [9, 10];
tad20 = [1, -1, 2, -2]; % +x, -x, +y, -y
operation20 = operation(machines20, tools20, tad20);

% Operation 21 (Milling OP21)
machines21 = [4, 5, 6];
tools21 = 11;
tad21 = 3; % +z
operation21= operation(machines21, tools21, tad21);

% Operation 2 (Turning OP2)
machines2 = [1, 2, 3];
tools2 = [3, 4];
tad2 = 3; % +z
operation2 = operation(machines2, tools2, tad2);

% Operation 22 (Milling OP22)
machines22 = [5, 6];
tools22 = 10;
tad22 = 3; % +z
operation22 = operation(machines22, tools22, tad22);

% Operation 3 (Drilling OP3)
machines3 = [7, 8];
tools3 = 6;
tad3 = [3, -3]; % +z, -z
operation3 = operation(machines3, tools3, tad3);

% Operation 4 (Reaming OP4)
machines4 = [7, 8];
tools4 = 7;
tad4 = [3, -3]; % +z, -z
operation4 = operation(machines4, tools4, tad4);

% Operation 6 (Drilling OP6)
machines6 = [1, 2, 3];
tools6 = 6;
tad6 = [3, -3]; % +z, -z
operation6 = operation(machines6, tools6, tad6);

% Operation 7 (Reaming OP7)
machines7 = [1, 2, 3];
tools7 = 7;
tad7 = [3, -3]; % +z, -z
operation7 = operation(machines7, tools7, tad7);

% Operation 18 (Drilling OP18)
machines18 = [5, 6];
tools18 = 6;
tad18 = [3,-3]; % +z
operation18 = operation(machines18, tools18, tad18);

% Operation 19 (Reaming OP19)
machines19 = [5, 6];
tools19 = 7;
tad19 = [3, -3]; % +z, -z
operation19 = operation(machines19, tools19, tad19);

% Operation 5 (Reaming OP5)
machines5 = [7, 8];
tools5 = 8;
tad5 = 3; % +z
operation5 = operation(machines5, tools5, tad5);

% Operation 8 (Boring OP8)
machines8 = [1, 2, 3];
tools8 = 5;
tad8 = 3; % +z
operation8 = operation(machines8, tools8, tad8);

% Operation 23 (Reaming OP23)
machines23 = [5, 6];
tools23 = 8;
tad23 = 3; % +z
operation23 = operation(machines23, tools23, tad23);

% Operation 9 (Turning OP9)
machines9 = [1, 2, 3];
tools9 = 1;
tad9 = 3; % +z
operation9 = operation(machines9, tools9, tad9);

% Operation 24 (Milling OP24)
machines24 = [5, 6];
tools24 = 12;
tad24 = 3; % +z
operation24 = operation(machines24, tools24, tad24);

% Operation 10 (Turning OP10)
machines10 = [1, 2, 3];
tools10 = 1;
tad10 = 3; % +z
operation10 = operation(machines10, tools10, tad10);

% Operation 25 (Milling OP25)
machines25 = [5, 6];
tools25 = 12;
tad25 = 3; % +z
operation25= operation(machines25, tools25, tad25);

% Operation 11 (Turning OP11)
machines11 = [1, 2, 3];
tools11 = [1, 2];
tad11 = -3; % -z
operation11= operation(machines11, tools11, tad11);

% Operation 12 (Milling OP12)
machines12 = [4, 5, 6];
tools12 = 11;
tad12 = [1, -1, 2, -2]; % +x, -x, +y, -y
operation12 = operation(machines12, tools12, tad12);

% Operation 15 (Milling OP15)
machines15 = [4, 5, 6];
tools15 = [9, 10];
tad15 = -3; % -z
operation15 = operation(machines15, tools15, tad15);

% Operation 13 (Turning OP13)
machines13 = [1, 2, 3];
tools13 = [1, 3, 4];
tad13 = -3; % -z
operation13 = operation(machines13, tools13, tad13);

% Operation 16 (Milling OP16)
machines16 = [5, 6];
tools16 = 9;
tad16 = -3; % -z
operation16 = operation(machines16, tools16, tad16);

% Operation 14 (Milling OP14)
machines14 = [4, 5, 6];
tools14 = 11;
tad14 = [1, -1, 2, -2]; % +x, -x, +y, -y
operation14 = operation(machines14, tools14, tad14);

% Operation 17 (Milling OP17)
machines17 = [4, 5, 6];
tools17 = 9;
tad17 = -3; % -z
operation17 = operation(machines17, tools17, tad17);

op = [operation1, operation2, operation3, operation4, operation5, operation6, operation7, operation8, operation9, operation10, operation11, operation12, operation13, operation14, operation15, operation16, operation17, operation18, operation19, operation20, operation21, operation22, operation23, operation24,operation25];
prod_time = containers.Map();

prod_time(strjoin(string([17,4,9]), '-')) = 4.3;
prod_time(strjoin(string([17,5,9]), '-')) = 3.5;
prod_time(strjoin(string([17,6,9]), '-')) = 6.8;


prod_time(strjoin(string([14,4,11]), '-')) = 10.8;
prod_time(strjoin(string([14,5,11]), '-')) = 9.7;
prod_time(strjoin(string([14,6,11]), '-')) = 7.4;


prod_time(strjoin(string([16,5,9]), '-')) = 4.6;
prod_time(strjoin(string([16,6,9]), '-')) = 7.2;


prod_time(strjoin(string([13,1,1]), '-')) = 0.5;
prod_time(strjoin(string([13,1,3]), '-')) = 0.7;
prod_time(strjoin(string([13,1,4]), '-')) = 0.4;
prod_time(strjoin(string([13,2,1]), '-')) = 1;
prod_time(strjoin(string([13,2,3]), '-')) = 1.4;
prod_time(strjoin(string([13,2,4]), '-')) = 0.8;
prod_time(strjoin(string([13,3,1]), '-')) = 0.8;
prod_time(strjoin(string([13,3,3]), '-')) = 1.1;
prod_time(strjoin(string([13,3,4]), '-')) = 0.7;


prod_time(strjoin(string([15,4,9]), '-')) = 2.7;
prod_time(strjoin(string([15,4,10]), '-')) = 2.8;
prod_time(strjoin(string([15,5,9]), '-')) = 2.9;
prod_time(strjoin(string([15,5,10]), '-')) = 2.4;
prod_time(strjoin(string([15,6,9]), '-')) = 2.8;
prod_time(strjoin(string([15,6,10]), '-')) = 2.5;


prod_time(strjoin(string([12,4,11]), '-')) = 5.7;
prod_time(strjoin(string([12,5,11]), '-')) = 4.2;
prod_time(strjoin(string([12,6,11]), '-')) = 2.8;


prod_time(strjoin(string([11,1,1]), '-')) = 2.3;
prod_time(strjoin(string([11,1,2]), '-')) = 3.3;
prod_time(strjoin(string([11,2,1]), '-')) = 4.6;
prod_time(strjoin(string([11,2,2]), '-')) = 6.5;
prod_time(strjoin(string([11,3,1]), '-')) = 3.8;
prod_time(strjoin(string([11,3,2]), '-')) = 5.5;


prod_time(strjoin(string([25,5,12]), '-')) = 0.5;
prod_time(strjoin(string([25,6,12]), '-')) = 0.6;


prod_time(strjoin(string([10,1,1]), '-')) = 0.7;
prod_time(strjoin(string([10,2,1]), '-')) = 0.8;
prod_time(strjoin(string([10,3,1]), '-')) = 0.9;


prod_time(strjoin(string([24,5,12]), '-')) = 0.4;
prod_time(strjoin(string([24,6,12]), '-')) = 0.5;


prod_time(strjoin(string([9,1,1]), '-')) = 0.6;
prod_time(strjoin(string([9,2,1]), '-')) = 0.7;
prod_time(strjoin(string([9,3,1]), '-')) = 0.8;


prod_time(strjoin(string([23,5,8]), '-')) = 30.2;
prod_time(strjoin(string([23,6,8]), '-')) = 13.4;

prod_time(strjoin(string([8,1,5]), '-')) = 1.1;
prod_time(strjoin(string([8,2,5]), '-')) = 1.5;
prod_time(strjoin(string([8,3,5]), '-')) = 1.8;

prod_time(strjoin(string([5,7,8]), '-')) = 34.3;
prod_time(strjoin(string([5,8,8]), '-')) = 13.7;


prod_time(strjoin(string([19,5,7]), '-')) = 10.7;
prod_time(strjoin(string([19,6,7]), '-')) = 24.1;


prod_time(strjoin(string([18,5,6]), '-')) = 3.3;
prod_time(strjoin(string([18,6,6]), '-')) = 3.4;


prod_time(strjoin(string([7,1,7]), '-')) = 13.4;
prod_time(strjoin(string([7,2,7]), '-')) = 26.6;
prod_time(strjoin(string([7,3,7]), '-')) = 30.2;


prod_time(strjoin(string([6,1,6]), '-')) = 3.3;
prod_time(strjoin(string([6,2,6]), '-')) = 4.8;
prod_time(strjoin(string([6,3,6]), '-')) = 3.3;


prod_time(strjoin(string([4,7,7]), '-')) = 54.8;
prod_time(strjoin(string([4,8,7]), '-')) = 38.1;


prod_time(strjoin(string([3,7,6]), '-')) = 5.5;
prod_time(strjoin(string([3,8,6]), '-')) = 3.8;


prod_time(strjoin(string([22,5,10]), '-')) = 3.1;
prod_time(strjoin(string([22,6,10]), '-')) = 3.2;

prod_time(strjoin(string([2,1,3]), '-')) = 1.2;
prod_time(strjoin(string([2,1,4]), '-')) = 1;
prod_time(strjoin(string([2,2,3]), '-')) = 1.9;
prod_time(strjoin(string([2,2,4]), '-')) = 1.5;
prod_time(strjoin(string([2,3,3]), '-')) = 2;
prod_time(strjoin(string([2,3,4]), '-')) = 1.6;


prod_time(strjoin(string([21,4,11]), '-')) = 5.7;
prod_time(strjoin(string([21,5,11]), '-')) = 4.2;
prod_time(strjoin(string([21,6,11]), '-')) = 2.8;

prod_time(strjoin(string([20,4,9]), '-')) = 2.7;
prod_time(strjoin(string([20,4,10]), '-')) = 2.8;
prod_time(strjoin(string([20,5,9]), '-')) = 2.9;
prod_time(strjoin(string([20,5,10]), '-')) = 2.4;
prod_time(strjoin(string([20,6,9]), '-')) = 2.9;
prod_time(strjoin(string([20,6,10]), '-')) = 2.4;

prod_time(strjoin(string([1,1,1]), '-')) = 2.3;
prod_time(strjoin(string([1,1,2]), '-')) = 3.3;
prod_time(strjoin(string([1,2,1]), '-')) = 4.6;
prod_time(strjoin(string([1,2,2]), '-')) = 6.5;
prod_time(strjoin(string([1,3,1]), '-')) = 3.8;
prod_time(strjoin(string([1,3,2]), '-')) = 5.5;


trans_time = [0,4,8,10,12,5,6,14; 4,0,3,7,11,5,4,6; 8,3,0,5,7,9,8,4; 10,7,5,0,4,14,12,6; 12,11,7,4,0,18,12,10; 5,5,9,14,18,0,6,8; 6,4,4,12,12,6,0,3; 14,6,8,6,10,8,3,0];

machine_cost = [30,10,30,40,100,60,10,15];
tool_cost = [10,10,10,10,15,5,15,20,30,12,30,15];


% Initialise PSO parameters. The size of population is 80, the maximum %generations 200, the inertia weight W is set starting with 1.2 and is %linearly de- creased to 0.4. Acceleration constants C1 and C 2 are set to %2.0. 

nParticles = 80; % Number of particles 
maxIter = 100; % Maximum number of iterations 
numObjectives = 3; %Number of Objectives
w = 1.2; % Inertia weight 
c1 = 2.0; % Personal acceleration coefficient 
c2 = 2.0; % Global acceleration coefficient 
archiveSize = 40; % Size of Pareto archive

%Initialise a swarm of particles with velocities V t id _ o, V t id _ m , V t id _ t , % V t id _ tad , and positions Xt X t id _ m , X t id _ t , and X t id _ tad ;
function swarm = InitializeSwarm(nParticles,schedules,op)
    for i = 1:nParticles
        random_no = randi([1, 24]);
        schedulei = schedules(random_no,:);
        swarm(i).operations = schedulei;
        swarm(i).operation_no = random_no;

        arr = [];
        for j = 1:10
            random_no2 = randi([1,length(op(schedulei(j)).machines)]);
            arr(end+1) = op(schedulei(j)).machines(random_no2);
        end

        swarm(i).machines = arr;

        arr = []; 
        for j = 1:10
            random_no3 = randi([1,length(op(schedulei(j)).tools)]); 
            arr(end+1) = op(schedulei(j)).tools(random_no3);
        end
        swarm(i).tools = arr;


        arr = []; 
        for j = 1:10
            random_no4 = randi([1,length(op(schedulei(j)).tad)]);
            arr(end+1) = op(schedulei(j)).tad(random_no4);
        end
        swarm(i).tad = arr;

        
        
        swarm(i).Velocity_m = zeros(1, 10);
        swarm(i).Velocity_t = zeros(1, 10);
        swarm(i).Velocity_tad = zeros(1, 10);

        
        swarm(i).BestPosition_m = swarm(i).machines;
        swarm(i).BestPosition_t = swarm(i).tools;
        swarm(i).BestPosition_tad = swarm(i).tad;

        swarm(i).Cost = NaN(1, 3);
        swarm(i).bestCost = realmax * ones(1, 3);
    end
end 

particles = InitializeSwarm(nParticles,schedules,op); %Initialize Swarm
archive = []; % External archive for non-dominated solutions

% Objective Functions
function cost = ObjectiveFunctions(operations, machines, tools, tad, prod_time, trans_time, machine_cost, tool_cost)
    tw = 0;
    for ii = 1:10
        key = strjoin(string([operations(ii), machines(ii), tools(ii)]), '-');
        tw = tw + prod_time(key);
    end



    tt = 0;
    for ii = 1:9
        tt = tt + trans_time(machines(ii), machines(ii+1));
    end

    tct = 0;
    tcti = 60;
    
    for ii = 1:9
        x1 = 1;
        if machines(ii) == machines(ii+1)
            x1 = 0;
        end 
        x2 = 1;
        if tools(ii) == tools(ii+1)
            x2 = 0;
        end 
        x = 1;
        if (x1==0) && (x2==0)
            x=0;
        end
        tct = tct + tcti*(x);
    end 
                
    sct = 0;
    scti = 50;
    for i = 1:9
        y1 = 1;
        if machines(ii) == machines(ii+1)
            y1 = 0;
        end 
        y2 = 1;
        if tad(ii) == tad(ii+1)
            y2 = 0;
        end 
        y = 1;
        if (y1==0) && (y2==0)
            y=0;
        end
        sct = sct + scti*(y);
    end 


    cost(1) = (0.5*tw) + (0.5*tt) + (0.5*tct) + (0.5*sct);

    mc = 0;
    for ii = 1:10
        mc = mc + machine_cost(machines(ii));
    end
    tc = 0;
    for ii = 1:10
        tc = tc + tool_cost(tools(ii));
    end

    mcc = 0;
    mcci = 160;
    for ii = 1:9
        p=1;
        if machines(ii) == machines(ii+1)
            p=0;
        end
        mcc = mcc + (mcci*p);
    end

    tcc = 0;
    tcci = 20;

    for ii = 1:9
        x1 = 1;
        if machines(ii) == machines(ii+1)
            x1 = 0;
        end 
        x2 = 1;
        if tools(ii) == tools(ii+1)
            x2 = 0;
        end 
        x = 1;
        if (x1==0) && (x2==0)
            x=0;
        end
        tcc = tcc + tcci*(x);
    end

    scc = 0;
    scci = 100;

    for ii = 1:9
        y1 = 1;
        if machines(ii) == machines(ii+1)
            y1 = 0;
        end 
        y2 = 1;
        if tad(ii) == tad(ii+1)
            y2 = 0;
        end 
        y = 1;
        if (y1==0) && (y2==0)
            y=0;
        end
        scc = scc + scci*(y);
    end
    
    cost(2) = (0.5*mc) + (0.5*tc) + (0.5*mcc) + (0.5*tcc) + (0.5*scc);

    makespan = 0;
    for ii = 1:10
       key = strjoin(string([operations(ii), machines(ii), tools(ii)]), '-');
       makespan = makespan + prod_time(key);
    end

    cost(3) = makespan;
end

%Dominates
%objValues1 dominates objValues2 if it is better or equal in all objectives and strictly better in at least one objective.
function result = Dominates(values1, values2)
    % Check if values1 dominates values2
    % Returns true if values1 is less than or equal to values2
    % in all objectives and strictly less in at least one.

    % Check if both vectors have the same number of objectives
    if length(values1) ~= length(values2)
        error('Input vectors must have the same number of objectives.');
    end

    % Check dominance conditions
    isLessThanOrEqual = all(values1 <= values2); % All components of values1 are <= values2
    isStrictlyLess = any(values1 < values2);     % At least one component of values1 is < values2

    % Return true if values1 dominates values2
    result = isLessThanOrEqual && isStrictlyLess;
end

%Update archive
function archive = UpdateArchive(archive, particles, maxArchiveSize)
    newSolutions = [archive, particles];
    
    % Step 1: Keep only non-dominated solutions
    nonDominatedSolutions = [];
    for i = 1:length(newSolutions)
        isDominated = false;
        for j = 1:length(newSolutions)
            if i ~= j && Dominates(newSolutions(j).Cost, newSolutions(i).Cost)
                isDominated = true;
                break;
            end
        end
        if ~isDominated
            nonDominatedSolutions = [nonDominatedSolutions, newSolutions(i)];
        end
    end
    
    % Step 2: Check archive size and apply crowding if needed
    if length(nonDominatedSolutions) > maxArchiveSize
        % Sort solutions by crowding distance and keep the most diverse
        nonDominatedSolutions = ApplyCrowdingDistance(nonDominatedSolutions, maxArchiveSize);
    end
    
    % Update archive
    archive = nonDominatedSolutions;
end

%Apply crowding distance
function archive = ApplyCrowdingDistance(solutions, maxSize)
    % Calculate crowding distance for each solution
    numSolutions = length(solutions);
    numObjectives = 3;
    
    % Initialize distances
    crowdingDistances = zeros(numSolutions, 1);
    
    % Calculate distance for each objective
    for objIndex = 1:numObjectives
        % Sort solutions by the current objective
        [~, sortedIdx] = sort([solutions.Cost], 1);
        
        % Set boundary distances to infinity
        crowdingDistances(sortedIdx(1)) = Inf;
        crowdingDistances(sortedIdx(length(sortedIdx))) = Inf;
        
        % Calculate crowding distance for the middle solutions
        for k = 2:(numSolutions-1)
            crowdingDistances(sortedIdx(k)) = crowdingDistances(sortedIdx(k)) + (solutions(sortedIdx(k+1)).Cost(objIndex) - solutions(sortedIdx(k-1)).Cost(objIndex));
        end
    end
    
    % Sort by crowding distance in descending order and select top solutions
    [~, sortedIdx] = sort(crowdingDistances, 'descend');
    archive = solutions(sortedIdx(1:maxSize));
end


function crowdingDistances = CalculateCrowdingDistance(solutions)
    numSolutions = length(solutions);
    numObjectives = 3;
    
    % Initialize distances
    crowdingDistances = zeros(numSolutions, 1);
    
    % Calculate distance for each objective
    for objIndex = 1:numObjectives
        % Sort solutions by the current objective
        [~, sortedIdx] = sort([solutions.Cost], 1);
        
        % Set boundary distances to infinity
        crowdingDistances(sortedIdx(1)) = Inf;
        crowdingDistances(sortedIdx(length(sortedIdx))) = Inf;
        
        % Calculate crowding distance for the middle solutions
        for k = 2:(numSolutions-1)
            crowdingDistances(sortedIdx(k)) = crowdingDistances(sortedIdx(k)) + (solutions(sortedIdx(k+1)).Cost(objIndex) - solutions(sortedIdx(k-1)).Cost(objIndex));
        end
    end
  
end

function leader = SelectLeader(archive)
    % Calculate crowding distance
    crowdingDistances = CalculateCrowdingDistance(archive);
    
    % Replace Inf values (boundary solutions) with a large number for roulette wheel selection
    crowdingDistances(isinf(crowdingDistances)) = max(crowdingDistances(~isinf(crowdingDistances))) * 1.1;
    
    % Normalize crowding distances to create a probability distribution
    probDist = crowdingDistances / sum(crowdingDistances);
    
    % Select a leader based on roulette-wheel selection
    cumulativeProb = cumsum(probDist);
    randomValue = rand;
    selectedIdx = find(cumulativeProb >= randomValue, 1, 'first');
    
    leader = archive(1);
end



%Mopso loop
for iter = 1:maxIter
        for i = 1:nParticles
            % Evaluate the objectives
            particles(i).Cost = ObjectiveFunctions(particles(i).operations, particles(i).machines, particles(i).tools, particles(i).tad, prod_time, trans_time,machine_cost, tool_cost);

            % Update personal best if current position is better
            if Dominates(particles(i).Cost, particles(i).bestCost)
                particles(i).bestCost = particles(i).Cost;
                particles(i).BestPosition_m = particles(i).machines;
                particles(i).BestPosition_t = particles(i).tools;
                particles(i).BestPosition_tad = particles(i).tad;
            end
        end

        % Update archive with non-dominated solutions
        archive = UpdateArchive(archive, particles, archiveSize);
 
        leader = SelectLeader(archive);

        % Update velocity and position of particles
        for i = 1:nParticles
            % Select leader from archive 
            
            r1 = rand(1,1);
            r2 = rand(1,1);
    

            particles(i).Velocity_m = w * particles(i).Velocity_m + c1 * r1 * (particles(i).BestPosition_m - particles(i).machines) + c2 * r2 * (leader.machines - particles(i).machines);
            %particles(i).Velocity_m = max(min(particles(i).Velocity_m, 8), -8);
            particles(i).machines = particles(i).machines + particles(i).Velocity_m;


           %find min_diff (ABSOLUTE) between the pso value and the machine set
           %values - this is done to asssign the closest possible
           %machine to the pso value
            for k=1:10
                min_diff = realmax;
                pso_value = particles(i).machines(k);
                machine_list = op(particles(i).operations(k)).machines;

                for x=1:length(machine_list)
                    machine_no = machine_list(x);
                    if abs(pso_value-machine_no)< min_diff
                        particles(i).machines(k) = machine_no;
                    end
                end

            end
                

            particles(i).Velocity_t = w * particles(i).Velocity_t+ c1 * r1 .* (particles(i).BestPosition_t - particles(i).tools)+ c2 * r2 .* (leader.tools - particles(i).tools);
            particles(i).Velocity_t = max(min(particles(i).Velocity_t, 12), -12);
            particles(i).tools = particles(i).tools + particles(i).Velocity_t;

            for k=1:10
                min_diff = realmax;
                pso_value = particles(i).tools(k);
                tools_list = op(particles(i).operations(k)).tools;

                for x=1:length(tools_list)
                    tool_no = tools_list(x);
                    if abs(pso_value-tool_no)< min_diff
                        particles(i).tools(k) = tool_no;
                    end
                end
                

            end

            particles(i).Velocity_tad = w * particles(i).Velocity_tad+ c1 * r1 .* (particles(i).BestPosition_tad - particles(i).tad)+ c2 * r2 .* (leader.tad - particles(i).tad);
            particles(i).Velocity_tad = max(min(particles(i).Velocity_tad, 3), -3);
            particles(i).tad = particles(i).tad + particles(i).Velocity_tad;

            for k=1:10
                min_diff = realmax;
                pso_value = particles(i).tad(k);
                tad_list = op(particles(i).operations(k)).tad;

                for x=1:length(tad_list)
                    tad_no = tad_list(x);
                    if abs(pso_value-tad_no)< min_diff
                        particles(i).tad(k) = tad_no;
                    end
                end

            end
            
            
        end

        % Display best particle cost info
        %plot(leader.Cost(1), leader.Cost(2), 'ro', 'MarkerSize', 3); % 'ro' for red circles\
        % Pause for a short duration to see the point added in real-time
        %pause(0.5);
        %disp(particles(5).tools(1));
        %disp(global_best_particle.operation_no);
        
        
end

% Extract all Cost values from the archive
costs = cat(1, archive.Cost);

% Plot the Pareto front
figure;
plot(costs(:, 1), costs(:, 2), 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k', 'DisplayName', 'w = 0.3');
xlabel('time');
ylabel('cost');
title('Pareto Front');
grid on;
legend('show'); % This will display the legend with the 'DisplayName' set in plot


% Plot the Pareto front
figure;
plot(costs(:, 2), costs(:, 3), 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k','DisplayName', 'c1=2.0');
xlabel('cost');
ylabel('makespan');
title('Pareto Front');
grid on;
legend('show'); % This will display the legend with the 'DisplayName' set in plot

% Plot the Pareto front
figure;
plot(costs(:, 1), costs(:, 3), 'ko', 'MarkerSize', 6, 'MarkerFaceColor', 'k','DisplayName', 'c1=2.0');
xlabel('time');
ylabel('makespan');
title('Pareto Front');
grid on;
legend('show'); % This will display the legend with the 'DisplayName' set in plot
figure;
scatter3(costs(:,1), costs(:,2), costs(:,3), 30 ,'k', 'filled' ,'MarkerFaceAlpha', 1.0);
xlabel('time');
ylabel('cost');
zlabel('makespan');
title('3D Scatter Plot');
colorbar;
% Display the final Pareto front
%PlotParetoFront(archive);





