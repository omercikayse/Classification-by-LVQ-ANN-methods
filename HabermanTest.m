name = 'HabermanData.txt';
tM = dlmread(name, ',');
Y=tM(141:168,:);

tX1=Y(:,1); tX2=Y(:,2); tX3=Y(:,3);
tTarget=Y(:,4);
    t=0;
    f=0;
        
    for i=1:length(Y)
        display(i);
        display('*********iterasyon*************');
        td1=sqrt(((tX1(i)-w1(1))^2+(tX2(i)-w1(2))^2+(tX3(i)-w1(3))^2));
        td2=sqrt(((tX1(i)-w2(1))^2+(tX2(i)-w2(2))^2+(tX3(i)-w2(3))^2));
        
    if tTarget(i)==1
        display('target= 1')
    else
            display('target= 2')
    end    
            
        if td1<td2
            display('Sonuc=1');
            if tTarget(i)==1
                t=t+1;
            else
                f=f+1;
            end
            
        elseif td2<td1
            display('Sonuc=2');
            if tTarget(i)==2
                t=t+1;
            else
                f=f+1;
            end
        else
            display('Esit');
            break;
        end
    end
    
    disp('*********performans******');
    sonuc=100*(t/(t+f));
    disp(sonuc);
        
        dip('Dogru : ')
        display(t)
        
        dip('Yanlis : : ')
        display(f)
           