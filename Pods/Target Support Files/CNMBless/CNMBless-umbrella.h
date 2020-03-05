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

#import "Command.h"
#import "CommandManager.h"

FOUNDATION_EXPORT double CNMBlessVersionNumber;
FOUNDATION_EXPORT const unsigned char CNMBlessVersionString[];

