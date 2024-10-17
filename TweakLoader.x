#import <string.h>
#import <dlfcn.h>
#import <crt_externs.h>

%ctor{
    // credits to https://github.com/opa334/Choicy/blob/master/Tweak.x#L38
    char *arg0 = **_NSGetArgv();

    // #ifdef TARGET_OS_SIMULATOR
    #if TARGET_OS_SIMULATOR
    arg0 = strstr(arg0, "/RuntimeRoot")?:arg0;
    #endif
    // #endif

    if(strstr(arg0,"/Application") == NULL){
        return;
    }

    // #ifdef TARGET_OS_SIMULATOR
    #if TARGET_OS_SIMULATOR
    dlopen("/opt/simject/AccDemo.dylib",RTLD_NOW); return;
    #endif
    // #endif

    dlopen(THEOS_PACKAGE_INSTALL_PREFIX"/Library/MobileSubstrate/DynamicLibraries/AccDemo.dylib",RTLD_NOW);
}