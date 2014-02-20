#include "stdafx.h"
#include "TestDLL.h"

TESTDLL_API void functionA(int *out_a)
{
    std::wstringstream wss;

    wss << L"functionA start: out_a = " << *out_a;
    ::OutputDebugStringW(wss.str().c_str());

    *out_a = 50;

    wss.str(L"");
    wss << L"functionA end: out_a = " << *out_a;
    ::OutputDebugStringW(wss.str().c_str());
}

TESTDLL_API void functionB(int *in_a)
{
    std::wstringstream wss;

    wss << L"functionB start: in_a = " << *in_a;
    ::OutputDebugStringW(wss.str().c_str());

    int a = *in_a;

    wss.str(L"");
    wss << L"functionB end: in_a = " << *in_a << L", a = " << a;
    ::OutputDebugStringW(wss.str().c_str());
}

TESTDLL_API void functionC(int *out_c)
{
    std::wstringstream wss;

    wss << L"functionC start: out_c = " << *out_c;
    ::OutputDebugStringW(wss.str().c_str());

    *out_c = 10;

    wss.str(L"");
    wss << L"functionC end: out_c = " << *out_c;
    ::OutputDebugStringW(wss.str().c_str());
}