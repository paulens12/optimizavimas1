#include <iostream>
#include <mgl2/mgl.h>

double fn(double x, double y)
{
    //return sin(5*x)*cos(5*y)/5;
    return (1-x-y)*x*y/8;
}

int sample(mglGraph *gr)
{
    gr->Rotate(50,60);
    mglData z(100, 100), x(100), y(100);
    for(int i=0; i<100; i++)
    {
        x.a[i] = i*0.01;
        y.a[i] = i*0.01;
        for(int j=0; j<100; j++)
        {
            z.a[100*i+j] = fn(0.01*i, 0.01*j);
        }
    }
    gr->SetRange('x', 0, 1);
    gr->SetRange('y', 0, 1);
    gr->SetRange('z', -0.2, 0.005);
    gr->Surf(x,y,z,".");
    gr->Axis();
    return 0;
}

int main() {
    mglGraph gr;
    sample(&gr);
    gr.WritePNG("test.png");
    std::cout << "Hello, World!" << std::endl;
    return 0;
}