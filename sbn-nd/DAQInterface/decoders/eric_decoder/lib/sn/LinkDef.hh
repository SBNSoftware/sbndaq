#ifndef SN_LINKDEF_H
#define SN_LINKDEF_H

#ifdef __CLING__

#pragma link off all globals;
#pragma link off all classes;
#pragma link off all functions;

#pragma link C++ nestedclass;
#pragma link C++ nestedtypedef;

#pragma link C++ class channelSN+;
#pragma link C++ class femSN+;

#endif

#endif //SN_LINKDEF_H
