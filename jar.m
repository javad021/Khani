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
    str=strcat(str,Data(i,4));
    
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
        

  CR=100*(countcomp/(length(str)*7));
        disp('Compression Ratio:');
        disp(CR);
        
        
E0=5000000;
Esend=1;
Ecapture=0.3;

tt=1:length(str);

ERemaining=E0-(tt*Esend)-(7*Ecapture);
       
Er2=E0-(ci(tt)*Esend)-(7*Ecapture)-(0.25*tt);
Er3=E0-(ci(tt)*Esend)-(7*Ecapture)-(0.5*tt); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
fid=fopen('MainData_4Sensors_10_13_P216.mat','r');
seq=fread(fid,'*char');
fclose(fid);
seq=reshape(seq,1,length(seq));
[alpha prob]=probcal(seq);
if ~isempty(alpha)
[huf entropy avglength redundancy]=huffman(alpha,prob);
if ~isempty(huf)
    lp=length(prob);
   for i=1:lp
     str=huf(i).sym;
     str=strcat(str,' :');
     str=strcat(str,num2str(huf(i).prob));
     str=strcat(str,' :');
     str=strcat(str,huf(i).code);
     disp(str);
   end
   
   %disp(strcat('Entropy = ',num2str(entropy)));
   %disp(strcat('Average length = ',num2str(avglength)));
   %disp(strcat('Redundancy = ',num2str(redundancy)));
   %Efficiency=entropy/avglength;
   %disp(strcat('Source Efficiency =',num2str(Efficiency)));
   encseq=huffencode(huf,seq);
   disp('Sequence :');
   disp(seq);
   disp('Encoded Sequence :');
   disp(encseq);
   %decseq=huffdecode(huf,encseq);
   %disp('Decoded Sequence :');
   %disp(decseq);
end
else
    display('Empty Sequence....');
end
h_code=str2num(encseq);

Er1=E0-(2*length(h_code)*Esend)-(tt*Ecapture);

figure(1);        
plot(tt,ERemaining,'r',tt,Er2,'g',tt,Er3,'b',tt,Er1,'m'),legend('Non Optimized','UEELC','NIS','HUFFMAN');
xlabel('Time(sec)');
ylabel('Remaining Energy (units)');