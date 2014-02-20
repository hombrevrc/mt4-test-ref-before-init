#ifdef TESTDLL_EXPORTS
#define TESTDLL_API extern "C" __declspec(dllexport)
#else
#define TESTDLL_API extern "C" __declspec(dllimport)
#endif

TESTDLL_API void functionA(int *out_a);
TESTDLL_API void functionB(int *in_a);
TESTDLL_API void functionC(int *out_c);