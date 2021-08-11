//
//  NSObject+Extension.h
//  SettingsApp
//
//  Created by Vinayak Tudayekar on 06/08/21.
//

#import <Foundation/Foundation.h>
#import "UIApplication.h"
@implementation UIApplication (AppVersion)
@interface NSString (Test)
 
- (NSString *)myModification;
 
@end
+ (NSString *) appVersion
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: @"CFBundleShortVersionString"];
}

+ (NSString *) build
{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey: (NSString *)kCFBundleVersionKey];
}
#import "versionBuild.h"
+ (NSString *) versionBuild
{
    NSString * version = [self appVersion];
    NSString * build = [self build];

    NSString * versionBuild = [NSString stringWithFormat: @"v%@", version];

    if (![version isEqualToString: build]) {
        versionBuild = [NSString stringWithFormat: @"%@(%@)", versionBuild, build];
    }

    return versionBuild;
}

@end
