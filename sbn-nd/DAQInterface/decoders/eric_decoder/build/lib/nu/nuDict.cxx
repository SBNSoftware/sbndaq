// Do NOT change. Changes will be lost next time file is generated

#define R__DICTIONARY_FILENAME nuDict
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
#include "/data/SNCommissioning/eric_decoder/lib/nu/include/femNU.hh"
#include "/data/SNCommissioning/eric_decoder/lib/nu/include/channelNU.hh"

// Header files passed via #pragma extra_include

// The generated code does not explicitly qualify STL entities
namespace std {} using namespace std;

namespace ROOT {
   static TClass *channelNU_Dictionary();
   static void channelNU_TClassManip(TClass*);
   static void *new_channelNU(void *p = 0);
   static void *newArray_channelNU(Long_t size, void *p);
   static void delete_channelNU(void *p);
   static void deleteArray_channelNU(void *p);
   static void destruct_channelNU(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::channelNU*)
   {
      ::channelNU *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::channelNU));
      static ::ROOT::TGenericClassInfo 
         instance("channelNU", "include/channelNU.hh", 7,
                  typeid(::channelNU), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &channelNU_Dictionary, isa_proxy, 4,
                  sizeof(::channelNU) );
      instance.SetNew(&new_channelNU);
      instance.SetNewArray(&newArray_channelNU);
      instance.SetDelete(&delete_channelNU);
      instance.SetDeleteArray(&deleteArray_channelNU);
      instance.SetDestructor(&destruct_channelNU);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::channelNU*)
   {
      return GenerateInitInstanceLocal((::channelNU*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::channelNU*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *channelNU_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::channelNU*)0x0)->GetClass();
      channelNU_TClassManip(theClass);
   return theClass;
   }

   static void channelNU_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   static TClass *femNU_Dictionary();
   static void femNU_TClassManip(TClass*);
   static void *new_femNU(void *p = 0);
   static void *newArray_femNU(Long_t size, void *p);
   static void delete_femNU(void *p);
   static void deleteArray_femNU(void *p);
   static void destruct_femNU(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const ::femNU*)
   {
      ::femNU *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(::femNU));
      static ::ROOT::TGenericClassInfo 
         instance("femNU", "include/femNU.hh", 9,
                  typeid(::femNU), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &femNU_Dictionary, isa_proxy, 4,
                  sizeof(::femNU) );
      instance.SetNew(&new_femNU);
      instance.SetNewArray(&newArray_femNU);
      instance.SetDelete(&delete_femNU);
      instance.SetDeleteArray(&deleteArray_femNU);
      instance.SetDestructor(&destruct_femNU);
      return &instance;
   }
   TGenericClassInfo *GenerateInitInstance(const ::femNU*)
   {
      return GenerateInitInstanceLocal((::femNU*)0);
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const ::femNU*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *femNU_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const ::femNU*)0x0)->GetClass();
      femNU_TClassManip(theClass);
   return theClass;
   }

   static void femNU_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_channelNU(void *p) {
      return  p ? new(p) ::channelNU : new ::channelNU;
   }
   static void *newArray_channelNU(Long_t nElements, void *p) {
      return p ? new(p) ::channelNU[nElements] : new ::channelNU[nElements];
   }
   // Wrapper around operator delete
   static void delete_channelNU(void *p) {
      delete ((::channelNU*)p);
   }
   static void deleteArray_channelNU(void *p) {
      delete [] ((::channelNU*)p);
   }
   static void destruct_channelNU(void *p) {
      typedef ::channelNU current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::channelNU

namespace ROOT {
   // Wrappers around operator new
   static void *new_femNU(void *p) {
      return  p ? new(p) ::femNU : new ::femNU;
   }
   static void *newArray_femNU(Long_t nElements, void *p) {
      return p ? new(p) ::femNU[nElements] : new ::femNU[nElements];
   }
   // Wrapper around operator delete
   static void delete_femNU(void *p) {
      delete ((::femNU*)p);
   }
   static void deleteArray_femNU(void *p) {
      delete [] ((::femNU*)p);
   }
   static void destruct_femNU(void *p) {
      typedef ::femNU current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class ::femNU

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
   static TClass *vectorlEchannelNUgR_Dictionary();
   static void vectorlEchannelNUgR_TClassManip(TClass*);
   static void *new_vectorlEchannelNUgR(void *p = 0);
   static void *newArray_vectorlEchannelNUgR(Long_t size, void *p);
   static void delete_vectorlEchannelNUgR(void *p);
   static void deleteArray_vectorlEchannelNUgR(void *p);
   static void destruct_vectorlEchannelNUgR(void *p);

   // Function generating the singleton type initializer
   static TGenericClassInfo *GenerateInitInstanceLocal(const vector<channelNU>*)
   {
      vector<channelNU> *ptr = 0;
      static ::TVirtualIsAProxy* isa_proxy = new ::TIsAProxy(typeid(vector<channelNU>));
      static ::ROOT::TGenericClassInfo 
         instance("vector<channelNU>", -2, "vector", 389,
                  typeid(vector<channelNU>), ::ROOT::Internal::DefineBehavior(ptr, ptr),
                  &vectorlEchannelNUgR_Dictionary, isa_proxy, 0,
                  sizeof(vector<channelNU>) );
      instance.SetNew(&new_vectorlEchannelNUgR);
      instance.SetNewArray(&newArray_vectorlEchannelNUgR);
      instance.SetDelete(&delete_vectorlEchannelNUgR);
      instance.SetDeleteArray(&deleteArray_vectorlEchannelNUgR);
      instance.SetDestructor(&destruct_vectorlEchannelNUgR);
      instance.AdoptCollectionProxyInfo(TCollectionProxyInfo::Generate(TCollectionProxyInfo::Pushback< vector<channelNU> >()));

      ::ROOT::AddClassAlternate("vector<channelNU>","std::vector<channelNU, std::allocator<channelNU> >");
      return &instance;
   }
   // Static variable to force the class initialization
   static ::ROOT::TGenericClassInfo *_R__UNIQUE_DICT_(Init) = GenerateInitInstanceLocal((const vector<channelNU>*)0x0); R__UseDummy(_R__UNIQUE_DICT_(Init));

   // Dictionary for non-ClassDef classes
   static TClass *vectorlEchannelNUgR_Dictionary() {
      TClass* theClass =::ROOT::GenerateInitInstanceLocal((const vector<channelNU>*)0x0)->GetClass();
      vectorlEchannelNUgR_TClassManip(theClass);
   return theClass;
   }

   static void vectorlEchannelNUgR_TClassManip(TClass* ){
   }

} // end of namespace ROOT

namespace ROOT {
   // Wrappers around operator new
   static void *new_vectorlEchannelNUgR(void *p) {
      return  p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<channelNU> : new vector<channelNU>;
   }
   static void *newArray_vectorlEchannelNUgR(Long_t nElements, void *p) {
      return p ? ::new((::ROOT::Internal::TOperatorNewHelper*)p) vector<channelNU>[nElements] : new vector<channelNU>[nElements];
   }
   // Wrapper around operator delete
   static void delete_vectorlEchannelNUgR(void *p) {
      delete ((vector<channelNU>*)p);
   }
   static void deleteArray_vectorlEchannelNUgR(void *p) {
      delete [] ((vector<channelNU>*)p);
   }
   static void destruct_vectorlEchannelNUgR(void *p) {
      typedef vector<channelNU> current_t;
      ((current_t*)p)->~current_t();
   }
} // end of namespace ROOT for class vector<channelNU>

namespace {
  void TriggerDictionaryInitialization_libnuDict_Impl() {
    static const char* headers[] = {
"/data/SNCommissioning/eric_decoder/lib/nu/include/femNU.hh",
"/data/SNCommissioning/eric_decoder/lib/nu/include/channelNU.hh",
0
    };
    static const char* includePaths[] = {
"/usr/include/root",
"/data/SNCommissioning/eric_decoder/lib/nu",
"/usr/include/root",
"/data/SNCommissioning/eric_decoder/build/lib/nu/",
0
    };
    static const char* fwdDeclCode = R"DICTFWDDCLS(
#line 1 "libnuDict dictionary forward declarations' payload"
#pragma clang diagnostic ignored "-Wkeyword-compat"
#pragma clang diagnostic ignored "-Wignored-attributes"
#pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
extern int __Cling_AutoLoading_Map;
class __attribute__((annotate("$clingAutoload$/data/SNCommissioning/eric_decoder/lib/nu/include/femNU.hh")))  channelNU;
class __attribute__((annotate("$clingAutoload$/data/SNCommissioning/eric_decoder/lib/nu/include/femNU.hh")))  femNU;
)DICTFWDDCLS";
    static const char* payloadCode = R"DICTPAYLOAD(
#line 1 "libnuDict dictionary payload"


#define _BACKWARD_BACKWARD_WARNING_H
// Inline headers
#include "/data/SNCommissioning/eric_decoder/lib/nu/include/femNU.hh"
#include "/data/SNCommissioning/eric_decoder/lib/nu/include/channelNU.hh"

#undef  _BACKWARD_BACKWARD_WARNING_H
)DICTPAYLOAD";
    static const char* classesHeaders[] = {
"channelNU", payloadCode, "@",
"femNU", payloadCode, "@",
nullptr
};
    static bool isInitialized = false;
    if (!isInitialized) {
      TROOT::RegisterModule("libnuDict",
        headers, includePaths, payloadCode, fwdDeclCode,
        TriggerDictionaryInitialization_libnuDict_Impl, {}, classesHeaders, /*hasCxxModule*/false);
      isInitialized = true;
    }
  }
  static struct DictInit {
    DictInit() {
      TriggerDictionaryInitialization_libnuDict_Impl();
    }
  } __TheDictionaryInitializer;
}
void TriggerDictionaryInitialization_libnuDict() {
  TriggerDictionaryInitialization_libnuDict_Impl();
}
