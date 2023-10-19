import java.awt.Robot;
import java.awt.event.*;


 mouse = Robot;
ETO=EyeTrackingOperations;
iTracker=ETO.find_all_eyetrackers;
%calb=ScreenBasedCalibration(iTracker);
%enter_calibration_mode(calb);
%leave_calibration_mode(calb);
%data={};
a=1;b=1;
for i=1:150
    iTracker.get_gaze_data();
    pause(0.3);
    data=iTracker.get_gaze_data();
    x=(data(1,1).LeftEye.GazePoint.OnDisplayArea(1)+data(1,1).RightEye.GazePoint.OnDisplayArea(1))/2;
    y=(data(1,1).LeftEye.GazePoint.OnDisplayArea(2)+data(1,1).RightEye.GazePoint.OnDisplayArea(2))/2;
    
    x=double(floor(x*1920));
    y=double(floor(y*1080));
   
    mouse_move(x, y,a,b);
   a=x;
   b=y;
    %pause(0.00001);
    
    %iTracker.stop_gaze_data();
%     if i==5 
%        Beeper(600, 100, 0.5); 
%     end
%      if i==10 
%        Beeper(600, 100, 0.5); 
%     end
end
iTracker.stop_gaze_data();
%{
while (1)
    
    iTracker.get_gaze_data();
    pause(0.2);
    data=iTracker.get_gaze_data();
    
    if data(1,1).LeftEye.GazePoint.OnDisplayArea(1)<=0.2 && data(1,1).LeftEye.GazePoint.OnDisplayArea(2)<0.2
        z=2;
         iTracker.stop_gaze_data();
        data=[];
        break;
    end
    
end
%}
% iTracker.get_gaze_data();
% pause(1);
% data=iTracker.get_gaze_data();
%data{1,1}(1,1).LeftEye.GazePoint.InUserCoordinateSystem
% iTracker.stop_gaze_data();