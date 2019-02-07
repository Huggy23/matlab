%% CPSC 50100-002                             Author: Jason Huggy
%  Assignment 3, Week 3                       Date: 2/6/2019
%  Elevator App
%
%  Please wait up to 5 seconds after user input. App takes time just like a
%  real elevator.
%
%%
x = 5;

floor1button = (5);   %1 = Up , 0 = Down
floor2button = 5;
floor0button = 5;


while x ~= 0 && x ~= 1 && x ~= 2
prompt = 'What floor are you on? Type "0" for Basement, "1" for Floor 1, or "2" for Floor 2.';
    x = input(prompt);
end

ePosition = 0; %Basement = 0, Level 1 = 1, Level 2 = 2
eDoor = "C"; % C = Closed, O = Open, Elevator Door

%If user hits button in basement
if x == 0 
    floor0button = 1;
end    

%If user hits button on level 1    
if x == 1
    while floor1button ~= 1 && floor1button ~= 0
        prompt = 'Do you want to go up or down? Type 1 for up or 0 for down.';
        floor1button = input(prompt);
    end
end

%If user hits button on level 2
if x == 2
    floor2button = 0;
end

buttonE = 5;


%% If floor 1 presses "up" or "down" button and elevator is at basement

if floor1button == 1 || floor1button == 0 && ePosition == 0
    ePosition = ePosition + 1;
    pause(5);
    disp("Elevator has gone from basement to floor 1.");
    disp(" ");
    pause(5);
    eDoor = "O";
    disp("Elevator door is open.");
    disp(" ");
    pause(5);
    
    while buttonE ~= 2 && buttonE ~= 0
    prompt = 'What floor would you like to go to? Type "2" for Floor Two, or "0" for the basement.';
    buttonE = input(prompt);
    end
    
    eDoor = "C";
    disp(" ");
    pause(5);
    disp("Door is now closed.");
    disp(" ");
    pause(5);
    
    if buttonE == 2
        disp("Going up.");
        disp(" ");
    elseif buttonE == 0
        disp("Going down.");
        disp(" ");
    end
    pause(5);
    disp("Elevator has gone from floor 1 to floor " + buttonE + ".");
    disp(" ");
    pause(5);
    disp("Elevator door is now open.");
    disp(" ");
    pause(5);
    disp("Elevator door is now closed.");
    
end


%% If floor 2 presses "down" button and elevator is at basement

if floor2button == 0 && ePosition == 0
    ePosition = ePosition + 2;
    disp("Elevator has gone from basement to floor 2.");
    disp(" ");
    pause(5);
    eDoor = "O";
    disp("Elevator door is open.");
    disp(" ");
    pause(5);
    
    while buttonE ~= 1 && buttonE ~= 0
    prompt = 'What floor would you like to go to? Type "1" for Floor 1, or "0" for the basement.';
    buttonE = input(prompt);
    end
    
    eDoor = "C";
    disp(" ");
    pause(5);
    disp("Door is now closed.");
    pause(5);
    disp(" ");
    disp("Going down.");
    disp(" ");
    pause(5);
    disp("Elevator has gone from floor 2 to floor " + buttonE + ".");
    disp(" ");
    pause(5);
    disp("Elevator door is now open.");
    disp(" ");
    pause(5);
    disp("Elevator door is now closed.");
end


%% If basement presses "up" button and elevator is at basement

if floor0button == 1 && ePosition == 0
    ePosition = ePosition;
    eDoor = "O";
    pause(5);
    disp("Elevator door is open.");
    disp(" ");
    pause(5);
    
    while buttonE ~= 1 && buttonE ~= 2
    prompt = 'What floor would you like to go to? Type "1" for Floor 1, or "2" for Floor 2.';
    buttonE = input(prompt);
    end
    
    eDoor = "C";
    disp(" ");
    disp("Door is now closed.");
    pause(5);
    disp(" ");
    disp("Going up.");
    pause(5);
    disp(" ");
    disp("Elevator has gone from the basement to floor " + buttonE + ".");
    disp(" ");
    pause(5);
    disp("Elevator door is now open.");
    disp(" ");
    pause(5);
    disp("Elevator door is now closed.");
end