#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "TtsPlugin.h"

FOUNDATION_EXPORT double tts_pluginVersionNumber;
FOUNDATION_EXPORT const unsigned char tts_pluginVersionString[];

