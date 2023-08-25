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

#import "MoneyConverterPlugin.h"

FOUNDATION_EXPORT double money_converterVersionNumber;
FOUNDATION_EXPORT const unsigned char money_converterVersionString[];

