close all
clear
clc
% filename='data.txt';
% s=importdata(filename);
% 
% disp(s);
% nn = [s{:}];
% disp(nn);
% 
% str=nn;
load MainData_4Sensors_10_13_P216
Data=MainData;
str='';
for i=1:10800
    str=strcat(str,Data(i,1));
    
end

codes = unicode2native(str, 'US-ASCII');


disp(codes);

b=de2bi(codes);

disp(b);

countcomp=0;


for i=1:length(str)
    comp='';
    zerocount=0;
    onecount=0;
    j=1;
    
    for j=1:7
        if b(i,j)==0
            zerocount=zerocount+1;
            
        end
        
        if b(i,j)==1
            onecount=onecount+1;
        end
        
      
    end
    
j=7;

ci(i)=0;

    if zerocount>onecount 
        
        
        if b(i,j)== 0
            z='0';
            f=strcat(comp,z);
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else
            o='1';
            f=strcat(comp,o);
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        end
        
        
        f=strcat(f,'1');
       countcomp=countcomp+1;
        ci(i)=ci(i)+1;
        j=j-1;
        
        f=strcat(f,'-');
        
       
        if j==6
            
        if b(i,j)==1
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==1
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==1
                    f=strcat(f,'10,');
                j=j-3;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-3)==1
                    f=strcat(f,'11,');
                j=j-4;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-4)==1
                    f=strcat(f,'100,');
                j=j-5;
                countcomp=countcomp+3;
                ci(i)=ci(i)+3;
                else if b(i,j-5)==1
                    f=strcat(f,'101,');
                j=j-6;
                countcomp=countcomp+3;
                ci(i)=ci(i)+3;
                    end
                    end
                    end
                end
            end
        end
        
        
      
                
        end
        
        
        
        if j==5
            
             
        if b(i,j)==1
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==1
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==1
                    f=strcat(f,'10,');
                j=j-3;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-3)==1
                    f=strcat(f,'11,');
                j=j-4;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-4)==1
                    f=strcat(f,'100,');
                j=j-5;
                countcomp=countcomp+3;
                ci(i)=ci(i)+3;
                    end
                    end
                end
            end
        end
        
            
            
        end
        
        
        
        
        
        if j==4
            
             
        if b(i,j)==1
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==1
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==1
                    f=strcat(f,'10,');
                j=j-3;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-3)==1
                    f=strcat(f,'11,');
                j=j-4;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                
                
                    end
                    end
                end
            end
       
        end
            
        
        
        
        if j==3
            
             
        if b(i,j)==1
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==1
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==1
                    f=strcat(f,'10,');
                j=j-3;
                
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                end
                    end
                    end
        end
        
        
      
    
        
        
        if j==2
            
             
        if b(i,j)==1
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==1
                f=strcat(f,'1,');
                j=j-2;
               
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
                
                    end
        end
        
        
        end
      
        
         
        
        
        if j==1
             
        if b(i,j)==1
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
       ci(i)=ci(i)+1;
                
                    end
                    end
               
        
            
    
        
            
        
    end
        
    
    



        
          
                   
        
        
        

%     if(zerocount<=onecount)
%         
%         
%         if b(i,j)==0
%             comp=comp+'0';
%         else comp=comp+'1';
%         end
%         
%         comp=comp+'0';
%         
%         j=j-1;
%         
%         comp=comp+'-';
%         
%         
%         while j~=0
%         if b(i,6)==0
%            comp=comp+'0,';
%            j=j-1;
%         else if b(i,5)==0
%                 comp=comp+'1,';
%                 j=j-2;
%                 
%             else if b(i,4)==0
%                     comp=comp+'10,';
%                     j=j-3;
%                     
%                  else if b(i,3)==0
% %                     comp=comp+'11,';
%                     j=j-4;
%              else if b(i,2)==0
%                     comp=comp+'100,';
%                     j=j-5;
%                     
%                      else if b(i,1)==0
%                     comp=comp+'101,';
%                     j=j-6;
%                          else j=0;
%                              
%                          end
%                  end
%                  
%                      end
%                      
%                 end
%             end
%         end
%         end 
%         
%     end 
% 
% end
% 
% 


% 
% 
% 





    if zerocount <= onecount 
        
        
        if b(i,j)== 0
            z='0';
            f=strcat(comp,z);
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else
            o='1';
            f=strcat(comp,o);
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        end
        
        
        f=strcat(f,'0');
        countcomp=countcomp+1;
        ci(i)=ci(i)+1;
        
        j=j-1;
        
        f=strcat(f,'-');
        
        if j==6
            
        if b(i,j)==0
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==0
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==0
                    f=strcat(f,'10,');
                j=j-3;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-3)==0
                    f=strcat(f,'11,');
                j=j-4;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-4)==0
                    f=strcat(f,'100,');
                j=j-5;
                countcomp=countcomp+3;
                ci(i)=ci(i)+3;
                else if b(i,j-5)==0
                    f=strcat(f,'101,');
                j=j-6;
                countcomp=countcomp+3;
                ci(i)=ci(i)+3;
                
                    end
                    end
                    end
                end
            end
        end
        
        
        
                
        end
        
        
        
        if j==5
            
             
        if b(i,j)==0
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==0
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==0
                    f=strcat(f,'10,');
                j=j-3;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-3)==0
                    f=strcat(f,'11,');
                j=j-4;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-4)==0
                    f=strcat(f,'100,');
                j=j-5;
                countcomp=countcomp+3;
                ci(i)=ci(i)+3;
                    end
                    end
                end
            end
        end
        
            
            
        end
        
        
        
        
        
        if j==4
            
             
        if b(i,j)==0
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==0
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==0
                    f=strcat(f,'10,');
                j=j-3;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                else if b(i,j-3)==0
                    f=strcat(f,'11,');
                j=j-4;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                
                
                    end
                    end
                end
            end
       
        end
            
        
        
        
        if j==3
            
             
        if b(i,j)==0
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==0
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            else if b(i,j-2)==0
                    f=strcat(f,'10,');
                j=j-3;
                countcomp=countcomp+2;
                ci(i)=ci(i)+2;
                
                end
                    end
                    end
        end
        
        
      
    
        
        
        if j==2
            
             
        if b(i,j)==0
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
        else if b(i,j-1)==0
                f=strcat(f,'1,');
                j=j-2;
               countcomp=countcomp+1;
               ci(i)=ci(i)+1;
            
                
                    end
        end
        
        
        end
      
        
         
        
        
        if j==1
             
        if b(i,j)==0
            f=strcat(f,'0,');
            j=j-1;
            countcomp=countcomp+1;
            ci(i)=ci(i)+1;
       
                
                    end
                    end
               
        
  
            
        
    end
        
    
    

          
        disp(f);
        
      
end
  
  
Data2=MainData;

t2 = 0:0.0001:20; %sampling at niquist rate
c2=input('Enter Bit Depth Of PCM2 Coding:');
part2 = -1:0.1:1;%A quantization partition defines several contiguous, nonoverlapping ranges
%of values within the set of real numbers.
codebook2 = -1:0.1:1.1;%A codebook tells the quantizer which common value to assign to inputs that
%fall into each range of the partition.
COUNTER2=0:length(Data2)-1;
COUNTER2=COUNTER2';

[~,quants2] = quantiz(Data2(:,1),part2,codebook2);%returns a vector that tells which interval each input is in
y2 = uencode(quants2,c2);
ybin2=dec2bin(y2,c2); %converting it to final binary form to make it transmit ready

b2=ybin2;

disp(b2);

countcomp2=0;


for i2=1:10800
    comp2='';
    zerocount2=0;
    onecount2=0;
    j2=1;
    
    for j2=1:7
        if b2(i2,j2)==0
            zerocount2=zerocount2+1;
            
        end
        
        if b2(i2,j2)==1
            onecount2=onecount2+1;
        end
        
      
    end
    
j2=7;

ci2(i2)=0;

    if zerocount2>onecount2 
        
        
        if b2(i2,j2)== 0
            z2='0';
            f2=strcat(comp2,z2);
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else
            o2='1';
            f2=strcat(comp2,o2);
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        end
        
        
        f2=strcat(f2,'1');
       countcomp2=countcomp2+1;
        ci2(i2)=ci2(i2)+1;
        j2=j2-1;
        
        f2=strcat(f2,'-');
        
       
        if j2==6
            
        if b2(i2,j2)==1
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==1
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            else if b2(i2,j2-2)==1
                    f2=strcat(f2,'10,');
                j2=j2-3;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-3)==1
                    f2=strcat(f2,'11,');
                j2=j2-4;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-4)==1
                    f2=strcat(f2,'100,');
                j2=j2-5;
                countcomp2=countcomp2+3;
                ci2(i2)=ci2(i2)+3;
                else if b2(i2,j2-5)==1
                    f2=strcat(f2,'101,');
                j2=j2-6;
                countcomp2=countcomp2+3;
                ci2(i2)=ci2(i2)+3;
                    end
                    end
                    end
                end
            end
        end
        
        
      
                
        end
        
        
        
        if j2==5
            
             
        if b2(i2,j2)==1
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==1
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci(i)=ci(i)+1;
            else if b2(i2,j2-2)==1
                    f2=strcat(f2,'10,');
                j2=j2-3;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-3)==1
                    f2=strcat(f2,'11,');
                j2=j2-4;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-4)==1
                    f2=strcat(f2,'100,');
                j2=j2-5;
                countcomp2=countcomp2+3;
                ci2(i2)=ci2(i2)+3;
                    end
                    end
                end
            end
        end
        
            
            
        end
        
        
        
        
        
        if j2==4
            
             
        if b2(i2,j2)==1
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==1
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            else if b2(i2,j2-2)==1
                    f2=strcat(f2,'10,');
                j2=j2-3;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-3)==1
                    f2=strcat(f2,'11,');
                j2=j2-4;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                
                
                    end
                    end
                end
            end
       
        end
            
        
        
        
        if j2==3
            
             
        if b2(i2,j2)==1
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==1
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            else if b2(i2,j2-2)==1
                    f2=strcat(f2,'10,');
                j2=j2-3;
                
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                end
                    end
                    end
        end
        
        
      
    
        
        
        if j2==2
            
             
        if b2(i2,j2)==1
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==1
                f2=strcat(f2,'1,');
                j2=j2-2;
               
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
                
                    end
        end
        
        
        end
      
        
         
        
        
        if j2==1
             
        if b(i2,j2)==1
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
       ci2(i2)=ci2(i2)+1;
                
                    end
                    end
               
        
            
    
        
            
        
    end
        
    
    



        
          
                   
        
        
        

%     if(zerocount<=onecount)
%         
%         
%         if b(i,j)==0
%             comp=comp+'0';
%         else comp=comp+'1';
%         end
%         
%         comp=comp+'0';
%         
%         j=j-1;
%         
%         comp=comp+'-';
%         
%         
%         while j~=0
%         if b(i,6)==0
%            comp=comp+'0,';
%            j=j-1;
%         else if b(i,5)==0
%                 comp=comp+'1,';
%                 j=j-2;
%                 
%             else if b(i,4)==0
%                     comp=comp+'10,';
%                     j=j-3;
%                     
%                  else if b(i,3)==0
% %                     comp=comp+'11,';
%                     j=j-4;
%              else if b(i,2)==0
%                     comp=comp+'100,';
%                     j=j-5;
%                     
%                      else if b(i,1)==0
%                     comp=comp+'101,';
%                     j=j-6;
%                          else j=0;
%                              
%                          end
%                  end
%                  
%                      end
%                      
%                 end
%             end
%         end
%         end 
%         
%     end 
% 
% end
% 
% 


% 
% 
% 





    if zerocount2 <= onecount2 
        
        
        if b2(i2,j2)== 0
            z2='0';
            f2=strcat(comp2,z2);
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else
            o2='1';
            f2=strcat(comp2,o2);
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        end
        
        
        f2=strcat(f2,'0');
        countcomp2=countcomp2+1;
        ci2(i2)=ci2(i2)+1;
        
        j2=j2-1;
        
        f2=strcat(f2,'-');
        
        if j2==6
            
        if b2(i2,j2)==0
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==0
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            else if b2(i2,j2-2)==0
                    f2=strcat(f2,'10,');
                j2=j2-3;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-3)==0
                    f2=strcat(f2,'11,');
                j2=j2-4;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-4)==0
                    f2=strcat(f2,'100,');
                j2=j2-5;
                countcomp2=countcomp2+3;
                ci2(i2)=ci2(i2)+3;
                else if b2(i2,j2-5)==0
                    f2=strcat(f2,'101,');
                j2=j2-6;
                countcomp2=countcomp2+3;
                ci2(i2)=ci2(i2)+3;
                
                    end
                    end
                    end
                end
            end
        end
        
        
        
                
        end
        
        
        
        if j2==5
            
             
        if b2(i2,j2)==0
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==0
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            else if b2(i2,j2-2)==0
                    f2=strcat(f2,'10,');
                j2=j2-3;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-3)==0
                    f2=strcat(f2,'11,');
                j2=j2-4;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-4)==0
                    f2=strcat(f2,'100,');
                j2=j2-5;
                countcomp2=countcomp2+3;
                ci2(i2)=ci2(i2)+3;
                    end
                    end
                end
            end
        end
        
            
            
        end
        
        
        
        
        
        if j2==4
            
             
        if b2(i2,j2)==0
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==0
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            else if b2(i2,j2-2)==0
                    f2=strcat(f2,'10,');
                j2=j2-3;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                else if b2(i2,j2-3)==0
                    f2=strcat(f2,'11,');
                j2=j2-4;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                
                
                    end
                    end
                end
            end
       
        end
            
        
        
        
        if j2==3
            
             
        if b2(i2,j2)==0
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==0
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            else if b2(i2,j2-2)==0
                    f2=strcat(f2,'10,');
                j2=j2-3;
                countcomp2=countcomp2+2;
                ci2(i2)=ci2(i2)+2;
                
                end
                    end
                    end
        end
        
        
      
    
        
        
        if j2==2
            
             
        if b2(i2,j2)==0
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
        else if b2(i2,j2-1)==0
                f2=strcat(f2,'1,');
                j2=j2-2;
               countcomp2=countcomp2+1;
               ci2(i2)=ci2(i2)+1;
            
                
                    end
        end
        
        
        end
      
        
         
        
        
        if j2==1
             
        if b2(i2,j2)==0
            f2=strcat(f2,'0,');
            j2=j2-1;
            countcomp2=countcomp2+1;
            ci2(i2)=ci2(i2)+1;
       
                
                    end
                    end
               
        
  
            
        
    end
        
    
    

          
        disp(f2);
        
      
end





  CR=100*(countcomp/(length(str)*7));
        disp('Compression Ratio:');
        disp(CR);
        
        
E0=5000000;
Esend=100;
Ecapture=30;

tt=1:length(str);

ERemaining=E0-(tt*Esend)-(7*Ecapture);
       
Er2=E0-(ci(tt)*Esend)-(7*Ecapture)-(25*tt);
Er3=E0-(ci(tt)*Esend)-(7*Ecapture)-(50*tt);  
Er4=E0-(ci2(tt)*Esend)-(7*Ecapture)-(8*tt);


figure(1);        

plot(tt,ERemaining,'r',tt,Er2,'g',tt,Er3,'b',tt,Er4,'y'),legend('Non Optimized','UEELC','NIS','SEECM');
xlabel('Time(sec)');
ylabel('Remaining Energy (units)');


tt=8000;

v=((Er2-Er3)*100)/ Er3;
disp(v);
