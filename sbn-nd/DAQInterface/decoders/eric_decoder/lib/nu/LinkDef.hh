#ifndef NU_LINKDEF_H
#define NU_LINKDEF_H

#ifdef __CLING__

#pragma link off all globals;
#pragma link off all classes;
#pragma link off all functions;

#pragma link C++ nestedclass;
#pragma link C++ nestedtypedef;

#pragma link C++ class channelNU+;
#pragma link C++ class femNU+;

#endif

#endif //NU_LINKDEF_H
