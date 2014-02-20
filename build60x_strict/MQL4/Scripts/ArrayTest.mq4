#property strict

#import "kernel32.dll"
    void OutputDebugStringW(string str);
#import

#import "TestDLL.dll"
    void functionA(int& out_a[]);
    void functionB(int& in_a[]);
    void functionC(int& out_c[]);
#import

void start()
{
    int a[1];
    int c[1];

    OutputDebugStringW("In MQL: before functionA call: a[0]=" + string(a[0]) + ", c[0]=" + string(c[0]));
    functionA(a);

    OutputDebugStringW("In MQL: before functionB call: a[0]=" + string(a[0]) + ", c[0]=" + string(c[0]));
    functionB(a);

    OutputDebugStringW("In MQL: before functionC call: a[0]=" + string(a[0]) + ", c[0]=" + string(c[0]));
    functionC(c);

    OutputDebugStringW("In MQL: after all calls: a[0]=" + string(a[0]) + ", c[0]=" + string(c[0]));
}
