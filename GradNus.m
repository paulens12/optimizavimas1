function [a , b] = GradNus( X,Y )
    ydaug = 0.5;
    i=0;
    ifun = 0;
    Xi11 = X;
    Xi22 = Y;
    pointsListX = [X];
    pointsListY = [Y];
    ListSize = 1;
    e = 1/10000;
    while(abs(sqrt(GradX(Xi11,Xi22)^2 + GradY(Xi11,Xi22)^2))>e)
        Xi1 = Xi11 - ydaug * GradX(Xi11,Xi22);
        Xi2 = Xi22 - ydaug * GradY(Xi11,Xi22);
        ifun = ifun + 2;
        Xi11 = Xi1;
        Xi22 = Xi2;
        pointsListX = [pointsListX, Xi11];
        pointsListY = [pointsListY, Xi22];
        ListSize = ListSize + 1;
        disp(Xi1)
        i=i+1;
    end
    
    Xt = 0:0.001:1;
    Yt = 0:0.001:1;
    size = 1000;
    Xte = [];
    Yte = [];
    eSize = 1000000;
    for i = 1:size
        for j = 1:size
            Xte = [Xte, Xt(i)];
            Yte = [Yte, Yt(j)];
        end
    end
    Zte = [];
    
    for i = 1:eSize
        Zte = [Zte,Function(Xte(i),Yte(i))];
    end
    pointsListZ = [];
    for i = 1:ListSize
        pointsListZ = [pointsListZ,Function(pointsListX(i),pointsListY(i))];
    end
    plot3(pointsListX,pointsListY,pointsListZ,'o',Xte,Yte,Zte,'-');
    a = Xi11;
    b = Xi22;
    fprintf('iteracijø skaièius: %d\n',i);
    fprintf('funkcijø skièiavimø skaièius: %d\n',ifun);
    fprintf('Gauti sprendiniai: %12.14f %12.14f\n',Xi11,Xi22);
    fprintf('funkcijos rezultatas: %12.14f ',Function(Xi11,Xi22));
end

function x = GradX(X,Y)
    x = 1/8 *(  2 * X * Y + Y ^ 2 - Y );
end

function y = GradY(X,Y)
    y = 1/8 *(  2 * X * Y + X ^ 2 - X );
end

function z = Function(X,Y)
    z = - 1/8 *( X * Y - X ^ 2 * Y - X * Y ^ 2 );
end
