#import "kernel32.dll"
    void OutputDebugStringA(string str);
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

    OutputDebugStringA("In MQL: before functionA call: a[0]=" + a[0] + ", c[0]=" + c[0]);
    functionA(a);

    OutputDebugStringA("In MQL: before functionB call: a[0]=" + a[0] + ", c[0]=" + c[0]);
    functionB(a);

    OutputDebugStringA("In MQL: before functionC call: a[0]=" + a[0] + ", c[0]=" + c[0]);
    functionC(c);

    OutputDebugStringA("In MQL: after all calls: a[0]=" + a[0] + ", c[0]=" + c[0]);
}

