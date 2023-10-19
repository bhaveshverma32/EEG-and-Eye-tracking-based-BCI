function [x1,y1]=mouse_move (x, y,a,b)
import java.awt.Robot;
import java.awt.event.*;
mouse = Robot;
if a<x
for i= 1 : x-a
    m= ((y-b)/(x-a));
    x1=a+i;
    y1=b+(m*i);
    mouse.mouseMove(a+i, b+(m*i));
    pause(0.001);
end
else
 for i= 1 : a-x
    m= ((y-b)/(x-a));
    x1= a-i;
    y1= b-(m*i);
    mouse.mouseMove(a-i, b-(m*i));
    pause(0.001);
end   
end



end
