clear all;

%----------------------INITIALIZATIONS-------------------------------------

%Initializing numbers to matrix data

%--------------------------NUMBER ONE--------------------------------------

matr1 = zeros([64, 32]); %  matrix data

columnRange = [9:12];

verticalStart = 5;

verticalEnd = 50;

matr1(verticalStart:verticalEnd, columnRange) = 255;

matr1(verticalEnd+1,columnRange) = 255;


%--------------------------NUMBER TWO--------------------------------------

matr2 = zeros(64, 32);

% Initialize a 64x32 matrix with  all zeros
matr2 = zeros(64, 32);

% bottom horizontal bar 
matr2(4, 5:25) = 255;

%right vertical segment
matr2(4:32, 25) = 255;

% Middle horizontal bar
matr2(32, 5:25) = 255;

% left vertical segment
matr2(32:50, 5) = 255;

% top horizontal bar
matr2(50, 5:25) = 255;

%--------------------------NUMBER THREE------------------------------------

% Initialize a 64x32 matrix with all zeros
matr3 = zeros(64, 32);

% bottom horizontal bar 
matr3(4, 5:25) = 255;

% right vertical segment
matr3(4:32, 5) = 255;

% Middle horizontal bar
matr3(32, 5:25) = 255;

% left vertical segment
matr3(32:50, 5) = 255;

% top horizontal bar
matr3(50, 5:25) = 255;

%--------------------------NUMBER FOUR ------------------------------------


% Initialize a 64x32 matrix with all zeros
matr4 = zeros(64, 32);

% BOTTOM horizontal bar
%matr4(4, 5:25) = 255; 

% Bottom right to middle right vertical segment
matr4(4:25, 5) = 255;

%middle right to top right vertical segment
matr4(25:50, 5) = 255

% MIDDLE horizontal bar
matr4(32, 5:25) = 255;

% Top left to middle left vertical segment
matr4(32:50, 25) = 255;

% TOP horizontal bar
%matr4(50, 5:25) = 255;


%--------------------------NUMBER FIVE-------------------------------------

% Initialize a 64x32 matrix with all zeros
matr5 = zeros(64, 32);

% bottom horizontal bar 
matr5(4, 5:25) = 255;

% right vertical segment
matr5(4:32, 5) = 255;

% MIDDLE horizontal bar
matr5(32, 5:25) = 255;

% middle to top left vertical segment
matr5(32:50, 25) = 255;

% TOP horizontal bar
matr5(50, 5:25) = 255;

%--------------------------NUMBER SIX-------------------------------------

% Initialize a 64x32 matrix with all zeros
matr6 = zeros(64, 32);

% BOTTOM horizontal bar
matr6(4, 5:25) = 255; 

% Bottom right to middle right vertical segment
matr6(4:25, 5) = 255;

%middle right to top right vertical segment
%matr6(25:50, 5) = 255

% MIDDLE horizontal bar
matr6(32, 5:25) = 255;

% Top left to middle left vertical segment
matr6(32:50, 25) = 255;

% bottom left to middle left vertical segment
matr6(4:25, 25) = 255;

% TOP horizontal bar
%matr6(50, 5:25) = 255;

%--------------------------NUMBER SEVEN-------------------------------------

% Initialize a 64x32 matrix with all zeros
matr7 = zeros(64, 32);

% BOTTOM horizontal bar
%matr7(4, 5:25) = 255; 

% Bottom right to middle right vertical segment
matr7(4:25, 5) = 255;

%middle right to top right vertical segment
matr7(25:50, 5) = 255

% MIDDLE horizontal bar
%matr7(32, 5:25) = 255;

% Top left to middle left vertical segment
%matr7(32:50, 25) = 255;

% bottom left to middle left vertical segment
%matr7(4:25, 25) = 255;

% TOP horizontal bar
matr7(50, 5:25) = 255;

%--------------------------NUMBER EIGHT-------------------------------------

% Initialize a 64x32 matrix with all zeros
matr8 = zeros(64, 32);

% BOTTOM horizontal bar
matr8(4, 5:25) = 255; 

% Bottom right to middle right vertical segment
matr8(4:25, 5) = 255;

%middle right to top right vertical segment
matr8(25:50, 5) = 255

% MIDDLE horizontal bar
matr8(32, 5:25) = 255;

% Top left to middle left vertical segment
matr8(32:50, 25) = 255;

% bottom left to middle left vertical segment
matr8(4:25, 25) = 255;

% TOP horizontal bar
matr8(50, 5:25) = 255;


%--------------------------NUMBER NINE ------------------------------------

% Initialize a 64x32 matrix with all zeros
matr9 = zeros(64, 32);

% bottom horizontal bar 
%matr9(4, 5:25) = 255; 

% right vertical segment 
matr9(4:50, 5) = 255;


% Middle horizontal bar
matr9(32, 5:25) = 255;

% left vertical segment
matr9(32:50, 25) = 255;

% TOP horizontal bar
matr9(50, 5:25) = 255;

%--------------------------NUMBER ZERO ------------------------------------

% Initialize a 64x32 matrix with all zeros
matr0 = zeros(64, 32);

% BOTTOM horizontal bar
matr0(4, 5:25) = 255; 

% Bottom right to middle right vertical segment
matr0(4:25, 5) = 255;

%middle right to top right vertical segment
matr0(25:50, 5) = 255

% MIDDLE horizontal bar
%matr0(32, 5:25) = 255;

% Top left to middle left vertical segment
matr0(32:50, 25) = 255;

% bottom left to middle left vertical segment
matr0(4:25, 25) = 255;

% TOP horizontal bar
matr0(50, 5:25) = 255;

%------------------EMPTY MATRIX------------------------------------------
matrEmp = zeros(64, 32)

%-------------------------------------------------------------------------

%Arduino & oled initialization setup

a = arduino('/dev/cu.usbserial-0001', 'Nano3', 'Libraries', {'I2C'}); %board specifications
oled = device(a, 'I2CAddress', 0x3C); %i2c address is 0x3C

%----------------------SCREEN DISPLAY ON--------------------------------------
%SSD1315 OLED display 0.96" by seeed studio, 64 x 128 pixels from the grove
%beginner kit
write(oled, [0x00, 0xAE]); % Display OFF
write(oled, [0x00, 0xD5, 0x80]); % Set display clock
write(oled, [0x00, 0xA8, 0x3F]); % Multiplex ratio
write(oled, [0x00, 0xD3, 0x00]); % Display offset
write(oled, [0x00, 0x40]); % Set display start line
write(oled, [0x00, 0x8D, 0x14]); % Enable charge pump
write(oled, [0x00, 0xA1]); % Set segment re-map
write(oled, [0x00, 0xC8]); % COM output scan direction
write(oled, [0x00, 0xDA, 0x12]); % Set COM pins
write(oled, [0x00, 0x81, 0xCF]); % Set contrast
write(oled, [0x00, 0xD9, 0xF1]); % Pre-charge period
write(oled, [0x00, 0xDB, 0x40]); % VCOMH deselect level
write(oled, [0x00, 0xA4]); % Disable entire display on
write(oled, [0x00, 0xA6]); % Set normal display
write(oled, [0x00, 0xAF]); % Display ON

%-------------------SGP30 GAS SENSOR INITIALIZATION------------------------

%------****RUN SGP30.m BEFORE RUNNING THIS SCRIPT*****------------

sgp30obj = sgp30(a);
disp('warming up the sensor... .')
for(i=1:40)
pause(0.3);
warmup = readEquivalentCarbondioxide(sgp30obj);
end
disp('wait ten seconds'); pause(10);

%---------------------END OF INITIALIZATIONS-------------------------------

%--------------------START OF MAIN LOOP------------------------------------

while true

%-------------**START TIMER FOR LIGHT SENSOR**----------------------------
lightTimer = timer( ...
 'ExecutionMode', 'fixedRate', ...   
    'Period', 6, ...                   % Check every 6 seconds
    'TimerFcn', @(~,~) monitorLightSensor(a)); % Function 

% Start the timer

start(lightTimer);

%----------gas sensor display-----

    disp('measuring... 20times, 0.3 sec period')

for(i=1:20) 

pause(0.3); 

data(i) = readEquivalentCarbondioxide(sgp30obj);
end

  avgValue = mean(data);
    disp('average value:');
    disp(avgValue);


   % Extract thousands, hundreds, tens, and ones
    avgInt = floor(avgValue); % Ensure it's an integer if the mean has decimals
    pos1 = floor(mod(avgInt, 10000) / 1000); % Thousands column
    pos2 = floor(mod(avgInt, 1000) / 100);  % Hundreds column
    pos3 = floor(mod(avgInt, 100) / 10);    % Tens column
    pos4 = mod(avgInt, 10);                 % Ones column

    % Matrix display
    disp('Extracted digits in matrix [pos1, pos2, pos3, pos4]:');
    
%POS1
if pos1==1
    pos1=matr1
elseif pos1==2
    pos1=matr2
    elseif pos1==3
    pos1=matr3
    elseif pos1==4
    pos1=matr4
    elseif pos1==5
    pos1=matr5
    elseif pos1==6
    pos1=matr6
    elseif pos1==7
    pos1=matr7
    elseif pos1==8
    pos1=matr8
    elseif pos1==9
    pos1=matr9
    elseif pos1==0
    pos1=matrEmp
end

%POS2
if pos2==1
    pos2=matr1
elseif pos2==2
    pos2=matr2
    elseif pos2==3
    pos2=matr3
    elseif pos2==4
    pos2=matr4
    elseif pos2==5
    pos2=matr5
    elseif pos2==6
    pos2=matr6
    elseif pos2==7
    pos2=matr7
    elseif pos2==8
    pos2=matr8
    elseif pos2==9
    pos2=matr9
    elseif pos2==0
    pos2=matr0
end

%POS3
if pos3==1
    pos3=matr1
elseif pos3==2
    pos3=matr2
    elseif pos3==3
    pos3=matr3
    elseif pos3==4
    pos3=matr4
    elseif pos3==5
    pos3=matr5
    elseif pos3==6
    pos3=matr6
    elseif pos3==7
    pos3=matr7
    elseif pos3==8
    pos3=matr8
    elseif pos3==9
    pos3=matr9
    elseif pos3==0
    pos3=matr0
end

%POS4
if pos4==1
    pos4=matr1
elseif pos4==2
    pos4=matr2
    elseif pos4==3
    pos4=matr3
    elseif pos4==4
    pos4=matr4
    elseif pos4==5
    pos4=matr5
    elseif pos4==6
    pos4=matr6
    elseif pos4==7
    pos4=matr7
    elseif pos4==8
    pos4=matr8
    elseif pos4==9
    pos4=matr9
    elseif pos4==0
    pos4=matr0
end

matr = [pos4, pos3, pos2, pos1];   %inverted matrix to show correct display on screen

sendMatrix(oled, matr); %calls function to write pixels

%------***Warning  when high co2 levels detected---------***

if avgValue>=1000 %light will flash for 15 seconds, indicating high co2 levels
   playTone(a,'D5',700,3)%alarm buzzer will also go off to alert others
    writeDigitalPin(a,'D4',1)
    pause(1)
    writeDigitalPin(a,'D4',0)
pause(1)
writeDigitalPin(a,'D4',1)
pause(1)
writeDigitalPin(a,'D4',0)
pause(1)
writeDigitalPin(a,'D4',1)
    pause(1)
    writeDigitalPin(a,'D4',0)
pause(1)
writeDigitalPin(a,'D4',1)
pause(1)
writeDigitalPin(a,'D4',0)
pause(1)
    writeDigitalPin(a,'D4',1)
    pause(1)
    writeDigitalPin(a,'D4',0)
pause(1)
writeDigitalPin(a,'D4',1)
pause(1)
writeDigitalPin(a,'D4',0)
pause(1)
writeDigitalPin(a,'D4',1)
    pause(1)
    writeDigitalPin(a,'D4',0)
pause(1)
writeDigitalPin(a,'D4',1)
pause(1)
writeDigitalPin(a,'D4',0)
else
    writeDigitalPin(a,'D4',0) %wait 15 secs on display, no warning light
    pause(15)

end

%-------end of gas sensor display------

%--------start of clock display--------
 
% Get current time from clock function
currentTime = clock;

% Extract hours and minutes from the current time
hours = floor(currentTime(4));  % hours 4th element
minutes = floor(currentTime(5)); %minutes 5th element

% Extract tens and ones digits for hours and minutes
pos1 = floor(hours / 10);  % Tens digit of hours
pos2 = mod(hours, 10);     % Ones digit of hours
pos3 = floor(minutes / 10); % Tens digit of minutes
pos4 = mod(minutes, 10);   % Ones digit of minutes

%Set the position to respective matrix number

%POS1
if pos1==1
    pos1=matr1
elseif pos1==2
    pos1=matr2
    elseif pos1==3
    pos1=matr3
    elseif pos1==4
    pos1=matr4
    elseif pos1==5
    pos1=matr5
    elseif pos1==6
    pos1=matr6
    elseif pos1==7
    pos1=matr7
    elseif pos1==8
    pos1=matr8
    elseif pos1==9
    pos1=matr9
    elseif pos1==0
    pos1=matr0
end

%POS2
if pos2==1
    pos2=matr1
elseif pos2==2
    pos2=matr2
    elseif pos2==3
    pos2=matr3
    elseif pos2==4
    pos2=matr4
    elseif pos2==5
    pos2=matr5
    elseif pos2==6
    pos2=matr6
    elseif pos2==7
    pos2=matr7
    elseif pos2==8
    pos2=matr8
    elseif pos2==9
    pos2=matr9
    elseif pos2==0
    pos2=matr0
end

%POS3
if pos3==1
    pos3=matr1
elseif pos3==2
    pos3=matr2
    elseif pos3==3
    pos3=matr3
    elseif pos3==4
    pos3=matr4
    elseif pos3==5
    pos3=matr5
    elseif pos3==6
    pos3=matr6
    elseif pos3==7
    pos3=matr7
    elseif pos3==8
    pos3=matr8
    elseif pos3==9
    pos3=matr9
    elseif pos3==0
    pos3=matr0
end

%POS4
if pos4==1
    pos4=matr1
elseif pos4==2
    pos4=matr2
    elseif pos4==3
    pos4=matr3
    elseif pos4==4
    pos4=matr4
    elseif pos4==5
    pos4=matr5
    elseif pos4==6
    pos4=matr6
    elseif pos4==7
    pos4=matr7
    elseif pos4==8
    pos4=matr8
    elseif pos4==9
    pos4=matr9
    elseif pos4==0
    pos4=matr0
end

%each matr is 64x32, all 4 span the entire screen 64x128
matr = [pos4, pos3, pos2, pos1]; %inverted matrix to show correct order on screen

% Display the matrix with matr numbers from pos
sendMatrix(oled, matr);

%------Middle semi colon pixels-----
%display for semi colon to seperate the hours and minutes

% Coordinates for the bottom semi colon

for column = 61; 
for row = 15;    

%turn the pixels on
page = floor(row / 8); 
colLow = mod(column, 16); 
colHigh = floor(column / 16); 
write(oled, [0x00, 0xB0 + page]); 
write(oled, [0x00, colLow]); 
write(oled, [0x00, 0x10 + colHigh]); 
write(oled, [0x40, 0x01]*255); % Data byte 

end
end

% coordinates for the top semi colon

for column = 61; 
for row = 40;    

%turn the pixels on
page = floor(row / 8); 
colLow = mod(column, 16); 
colHigh = floor(column / 16); 
write(oled, [0x00, 0xB0 + page]);
write(oled, [0x00, colLow]); 
write(oled, [0x00, 0x10 + colHigh]);
write(oled, [0x40, 0x01]*255); 

end 
end
    
%-----end of semi colon pixels-------

stop(lightTimer); %stop light timer before repeating loop
delete(lightTimer); %stop code at this point to avoid timer running indefinetly

pause(5) % pause clock display before moving on

end   % end of while loop

%---------------------END OF MAIN LOOP-----------------------------------


%------------------FUNCTION TO DISPLAY MATRIX DATA-----------------------

function sendMatrix(oled, matr)
%input matrix dimensions
    [rows, cols] = size(matr);

    maxBytes = 31; % I2C transfer limit per write is 32
    totalPages = 8; % 64 pixels / 8 rows per page

    for page = 0:totalPages-1
        % Set page address
        write(oled, [0x00, 0xB0 + page]); % Page start address

        % Reset column address
        write(oled, [0x00, 0x00, 0x10]); 

        % Extract 8 rows (one page) of data
        rowStart = page * 8 + 1;
        rowEnd = rowStart + 7;
        pageData = matr(rowStart:rowEnd, :);

        % Convert the page data to bytes (128 bytes per page)
        bytes = zeros(1, 128, 'uint8');
        for col = 1:128
            % Pack 8 rows into 1 byte
            byte = 0;
            for bit = 0:7
                byte = bitor(byte, bitshift(pageData(bit + 1, col), bit));
            end
            bytes(col) = byte;
        end

        % Send the data in chunks due to I2C limit
        for i = 1:maxBytes:128
            chunk = bytes(i:min(i + maxBytes - 1, 128));
            write(oled, [0x40, chunk]); % 0x40 for data mode
        end
    end
end
%-----------------------end of function------------------------------------
%----------------*FUNCTION TO MONITOR LIGHT SENSOR*-------------------------

function monitorLightSensor(a)
    % Read the light sensor value
    lightSensor = readVoltage(a, 'A6');
    disp(['Light sensor value: ', num2str(lightSensor)]);
    
    % Turn pump on or off based on lightSensor value
    if lightSensor < 0.8
       
        writeDigitalPin(a, 'D2', 1); % Turn pump on
        pause(1.3);                 % Keep it on for 1.3 seconds to dispense sanitizer
        writeDigitalPin(a, 'D2', 0); % Turn pump off
    end
end
%-------------------------end of function----------------------------------