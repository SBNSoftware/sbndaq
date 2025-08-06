// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME snDict
#define R__NO_DEPRECATION

/*******************************************************************/
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#define G__DICTIONARY
#include "RConfig.h"
#include "TClass.h"
#include "TDictAttributeMap.h"
#include "TInterpreter.h"
#include "TROOT.h"
#include "TBuffer.h"
#include "TMemberInspector.h"
#include "TInterpreter.h"
#include "TVirtualMutex.h"
#include "TError.h"

#ifndef G__ROOT
#define G__ROOT
#endif

#include "RtypesImp.h"
#include "TIsAProxy.h"
#include "TFileMergeInfo.h"
#include <algorithm>
#include "TCollectionProxyInfo.h"
/*******************************************************************/

#include "TDataMember.h"

// Header files passed as explicit arguments
#include "/data/SNCommissioning/eric_decoder/lib/sn/include/femSN.hh"
#include "/data/SNCommissioning/eric_decoder/lib/sn/include/channelSN.hh"

// Header files passed via #pragma extra_include

// The generated code does not explicitly qualify STL entities
namespace std {} using namespace std;

namespace ROOT {
   static TClass *channelSN_Dictionary();
   static void channelSN_TClassManip(TClass*);
   static void *new_channelSN(void *p = 0);
   static void *newArray_channelSN(Long_t size, void *p);
   static void delete_channelSN(void *p);
   static void deleteArray_channelSN(void *p);
   static void destruct_channelSN(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::channelSN*)
   {
      ::channelSN *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::channelSN));
      static ::ROOT::TGenericClassInfo 
         instance("channelSN", "include/channelSN.hh", 7,
                  typeid(::channelSN), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &channelSN_Dictionary, isa_proxy, 4,
                  sizeof(::channelSN) );
      instance.SetNew(&new_channelSN);
      instance.SetNewArray(&newArray_channelSN);
      instance.SetDelete(&delete_channelSN);
      instance.SetDeleteArray(&deleteArray_channelSN);
      instance.SetDestructor(&destruct_channelSN);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::channelSN*)
   {
      return GenerateInitInstanceLocal((::channelSN*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::channelSN*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *channelSN_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::channelSN*)0x0)->GetClass();
      channelSN_TClassManip(theClass);
   return theClass;
   }

   static void channelSN_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *femSN_Dictionary();
   static void femSN_TClassManip(TClass*);
   static void *new_femSN(void *p = 0);
   static void *newArray_femSN(Long_t size, void *p);
   static void delete_femSN(void *p);
   static void deleteArray_femSN(void *p);
   static void destruct_femSN(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::femSN*)
   {
      ::femSN *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::femSN));
      static ::ROOT::TGenericClassInfo 
         instance("femSN", "include/femSN.hh", 9,
                  typeid(::femSN), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &femSN_Dictionary, isa_proxy, 4,
                  sizeof(::femSN) );
      instance.SetNew(&new_femSN);
      instance.SetNewArray(&newArray_femSN);
      instance.SetDelete(&delete_femSN);
      instance.SetDeleteArray(&deleteArray_femSN);
      instance.SetDestructor(&destruct_femSN);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::femSN*)
   {
      return GenerateInitInstanceLocal((::femSN*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::femSN*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *femSN_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::femSN*)0x0)->GetClass();
      femSN_TClassManip(theClass);
   return theClass;
   }

   static void femSN_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_channelSN(void *p) {
      return  p ? new(p) ::channelSN : new ::channelSN;
   }
   static void *newArray_channelSN(Long_t nElements, void *p) {
      return p ? new(p) ::channelSN[nElements] : new ::channelSN[nElements];
   }
   // Wrapper around operator delete
   static void delete_channelSN(void *p) {
      delete ((::channelSN*)p);
   }
   static void deleteArray_channelSN(void *p) {
      delete [] ((::channelSN*)p);
   }
   static void destruct_channelSN(void *p) {
      typedef ::channelSN current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::channelSN

namespace ROOT {
   // Wrappers around operator new
   static void *new_femSN(void *p) {
      return  p ? new(p) ::femSN : new ::femSN;
   }
   static void *newArray_femSN(Long_t nElements, void *p) {
      return p ? new(p) ::femSN[nElements] : new ::femSN[nElements];
   }
   // Wrapper around operator delete
   static void delete_femSN(void *p) {
      delete ((::femSN*)p);
   }
   static void deleteArray_femSN(void *p) {
      delete [] ((::femSN*)p);
   }
   static void destruct_femSN(void *p) {
      typedef ::femSN current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::femSN

namespace ROOT {
   static TClass *vectorlEunsignedsPshortgR_Dictionary();
   static void vectorlEunsignedsPshortgR_TClassManip(TClass*);
   static void *new_vectorlEunsignedsPshortgR(void *p = 0);
   static void *newArray_vectorlEunsignedsPshortgR(Long_t size, void *p);
   static void delete_vectorlEunsignedsPshortgR(void *p);
   static void deleteArray_vectorlEunsignedsPshortgR(void *p);
   static void destruct_vectorlEunsignedsPshortgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<unsigned short>*)
   {
      vector<unsigned short> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<unsigned short>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<unsigned short>", -2, "vector", 389,
                  typeid(vector<unsigned short>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEunsignedsPshortgR_Dictionary, isa_proxy, 0,
                  sizeof(vector<unsigned short>) );
      instance.SetNew(&new_vectorlEunsignedsPshortgR);
      instance.SetNewArray(&newArray_vectorlEunsignedsPshortgR);
      instance.SetDelete(&delete_vectorlEunsignedsPshortgR);
      instance.SetDeleteArray(&deleteArray_vectorlEunsignedsPshortgR);
      instance.SetDestructor(&destruct_vectorlEunsignedsPshortgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<unsigned short> >()));

      ::ROOT::AddClassAlternate("vector<unsigned short>","std::vector<unsigned short, std::allocator<unsigned short> >");
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const vector<unsigned short>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEunsignedsPshortgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const vector<unsigned short>*)0x0)->GetClass();
      vectorlEunsignedsPshortgR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEunsignedsPshortgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEunsignedsPshortgR(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<unsigned short> : new vector<unsigned short>;
   }
   static void *newArray_vectorlEunsignedsPshortgR(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<unsigned short>[nElements] : new vector<unsigned short>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEunsignedsPshortgR(void *p) {
      delete ((vector<unsigned short>*)p);
   }
   static void deleteArray_vectorlEunsignedsPshortgR(void *p) {
      delete [] ((vector<unsigned short>*)p);
   }
   static void destruct_vectorlEunsignedsPshortgR(void *p) {
      typedef vector<unsigned short> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class vector<unsigned short>

namespace ROOT {
   static TClass *vectorlEunsignedsPintgR_Dictionary();
   static void vectorlEunsignedsPintgR_TClassManip(TClass*);
   static void *new_vectorlEunsignedsPintgR(void *p = 0);
   static void *newArray_vectorlEunsignedsPintgR(Long_t size, void *p);
   static void delete_vectorlEunsignedsPintgR(void *p);
   static void deleteArray_vectorlEunsignedsPintgR(void *p);
   static void destruct_vectorlEunsignedsPintgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<unsigned int>*)
   {
      vector<unsigned int> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<unsigned int>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<unsigned int>", -2, "vector", 389,
                  typeid(vector<unsigned int>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEunsignedsPintgR_Dictionary, isa_proxy, 0,
                  sizeof(vector<unsigned int>) );
      instance.SetNew(&new_vectorlEunsignedsPintgR);
      instance.SetNewArray(&newArray_vectorlEunsignedsPintgR);
      instance.SetDelete(&delete_vectorlEunsignedsPintgR);
      instance.SetDeleteArray(&deleteArray_vectorlEunsignedsPintgR);
      instance.SetDestructor(&destruct_vectorlEunsignedsPintgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<unsigned int> >()));

      ::ROOT::AddClassAlternate("vector<unsigned int>","std::vector<unsigned int, std::allocator<unsigned int> >");
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const vector<unsigned int>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEunsignedsPintgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const vector<unsigned int>*)0x0)->GetClass();
      vectorlEunsignedsPintgR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEunsignedsPintgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEunsignedsPintgR(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<unsigned int> : new vector<unsigned int>;
   }
   static void *newArray_vectorlEunsignedsPintgR(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<unsigned int>[nElements] : new vector<unsigned int>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEunsignedsPintgR(void *p) {
      delete ((vector<unsigned int>*)p);
   }
   static void deleteArray_vectorlEunsignedsPintgR(void *p) {
      delete [] ((vector<unsigned int>*)p);
   }
   static void destruct_vectorlEunsignedsPintgR(void *p) {
      typedef vector<unsigned int> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class vector<unsigned int>

namespace ROOT {
   static TClass *vectorlEchannelSNgR_Dictionary();
   static void vectorlEchannelSNgR_TClassManip(TClass*);
   static void *new_vectorlEchannelSNgR(void *p = 0);
   static void *newArray_vectorlEchannelSNgR(Long_t size, void *p);
   static void delete_vectorlEchannelSNgR(void *p);
   static void deleteArray_vectorlEchannelSNgR(void *p);
   static void destruct_vectorlEchannelSNgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<channelSN>*)
   {
      vector<channelSN> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<channelSN>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<channelSN>", -2, "vector", 389,
                  typeid(vector<channelSN>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEchannelSNgR_Dictionary, isa_proxy, 0,
                  sizeof(vector<channelSN>) );
      instance.SetNew(&new_vectorlEchannelSNgR);
      instance.SetNewArray(&newArray_vectorlEchannelSNgR);
      instance.SetDelete(&delete_vectorlEchannelSNgR);
      instance.SetDeleteArray(&deleteArray_vectorlEchannelSNgR);
      instance.SetDestructor(&destruct_vectorlEchannelSNgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<channelSN> >()));

      ::ROOT::AddClassAlternate("vector<channelSN>","std::vector<channelSN, std::allocator<channelSN> >");
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const vector<channelSN>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEchannelSNgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const vector<channelSN>*)0x0)->GetClass();
      vectorlEchannelSNgR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEchannelSNgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEchannelSNgR(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<channelSN> : new vector<channelSN>;
   }
   static void *newArray_vectorlEchannelSNgR(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<channelSN>[nElements] : new vector<channelSN>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEchannelSNgR(void *p) {
      delete ((vector<channelSN>*)p);
   }
   static void deleteArray_vectorlEchannelSNgR(void *p) {
      delete [] ((vector<channelSN>*)p);
   }
   static void destruct_vectorlEchannelSNgR(void *p) {
      typedef vector<channelSN> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class vector<channelSN>

namespace {
  void TriggerDictionaryInitialization_libsnDict_Impl() {
    static const char* headers[] = {
"/data/SNCommissioning/eric_decoder/lib/sn/include/femSN.hh",
"/data/SNCommissioning/eric_decoder/lib/sn/include/channelSN.hh",
0
    };
    static const char* includePaths[] = {
"/usr/include/root",
"/data/SNCommissioning/eric_decoder/lib/sn",
"/usr/include/root",
"/data/SNCommissioning/eric_decoder/build/lib/sn/",
0
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "libsnDict dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_AutoLoading_Map;
class __attribute__((annotate("$clingAutoload$/data/SNCommissioning/eric_decoder/lib/sn/include/femSN.hh")))  channelSN;
class __attribute__((annotate("$clingAutoload$/data/SNCommissioning/eric_decoder/lib/sn/include/femSN.hh")))  femSN;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "libsnDict dictionary payload"


#define _BACKWARD_BACKWARD_WARNING_H
// Inline headers
#include "/data/SNCommissioning/eric_decoder/lib/sn/include/femSN.hh"
#include "/data/SNCommissioning/eric_decoder/lib/sn/include/channelSN.hh"

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[] = {
"channelSN", payloadCode, "@",
"femSN", payloadCode, "@",
nullptr
};
    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("libsnDict",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_libsnDict_Impl, {}, classesHeaders, /*hasCxxModule*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_libsnDict_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_libsnDict() {
  TriggerDictionaryInitialization_libsnDict_Impl();
}
