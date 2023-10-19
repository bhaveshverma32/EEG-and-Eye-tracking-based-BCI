import java.awt.Robot;
import java.awt.event.*;
lib = lsl_loadlib();

mouse = Robot;
result = {};
while isempty(result)
    result = lsl_resolve_byprop(lib,'type','EEG'); 
end
%hhhhhhhhihhiihhhh
inlet = lsl_inlet(result{1});

while(1)

   
    [chunk,stamps] = inlet.pull_chunk();
    pause(5);
    [chunk,stamps] = inlet.pull_chunk();
    
   chunk=chunk(4,:);%select channel
   if length(chunk)>639
  chunk=chunk(:,1:640);
  
  chunk=filtr(chunk,128,49,51,640,[],1); %notch
  
 chunk= filtr_fft(chunk,128,0.2,35);
  
[pxx, pff]=pwelch(chunk,[],[],512,128);

features=pxx';
testResult = scg_test(network, weightVector, features);
a1=round(testResult);
if sum (a1)==1
    if a1(1)==1
%         pause(0.3);
%         mouse.mousePress(InputEvent.BUTTON2_MASK);    %left click press
%         mouse.mouseRelease(InputEvent.BUTTON2_MASK);   %left click release
%             
            mouse.keyPress(KeyEvent.VK_V)
            pause(0.3);

    end
     if a1(2)==1
%         pause(0.1);
%         mouse.mousePress(InputEvent.BUTTON2_MASK);    %left click press
%         mouse.mouseRelease(InputEvent.BUTTON2_MASK);   %left click release
%             
            mouse.keyPress(KeyEvent.VK_S)
             pause(0.3);

     end
     if a1(3)==1
%         pause(0.1);
%         mouse.mousePress(InputEvent.BUTTON2_MASK);    %left click press
%         mouse.mouseRelease(InputEvent.BUTTON2_MASK);   %left click release
%             
        mouse.keyPress(KeyEvent.VK_I)
        pause(0.3);

     end
     if a1(4)==1
%          pause(0.3);
%             mouse.mousePress(InputEvent.BUTTON2_MASK);    %left click press
%             mouse.mouseRelease(InputEvent.BUTTON2_MASK);   %left click release
%            
      mouse.keyPress(KeyEvent.VK_H)
       pause(0.3);
     end
end
end            


end



