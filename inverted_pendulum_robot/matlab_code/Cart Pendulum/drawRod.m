% Austin Kaul , Jonathan Matthews
% Control Systems Lab 2 (ME 453)
% Dr. Hoover
% Due October 25, 2017

%This function draws a rod that varies in angle with respect to the base of
%a slider based on the input. This function was made to be called by the
%drawPendulum function. Once the handle input is not empty this function
%just updates the figure handle with the set command.

%Inputs
%   y =     the location of the slider on the track
%   theta = the angle at which the rod is rotated
%   L =     length of the rod
%   gap=    gap the rod is from the track
%   height= the height of the slider
%   handle= inputs a figure handle

%Outputs
%   drawPendulum = draws the Slider and rod to make a pendulum that will
%                  move coninuosly in time when called by SIMULINK

function handle = drawRod(y,theta,L,height,handle)


%%%%  Define adn draw the pendulum Rod%%%
X = [y, y+L*sin(theta)];
Y = [height, height - L*cos(theta)];
if isempty(handle),
    handle = plot(X,Y,'g','linewidth',2);
else
    set(handle,'XData',X,'YData',Y);
end
end