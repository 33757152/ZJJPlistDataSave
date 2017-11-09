//
//  ZJJDontBackUpTool.m
//  ZJJPlistDataSave
//
//  Created by 张锦江 on 2017/11/9.
//  Copyright © 2017年 ZJJ. All rights reserved.
//

#import "ZJJDontBackUpTool.h"
#include <sys/xattr.h>

@implementation ZJJDontBackUpTool

+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL {
    const char* filePath = [[URL path] fileSystemRepresentation];
    const char* attrName = "com.apple.MobileBackup";
    u_int8_t attrValue = 1;
    int result = setxattr(filePath, attrName, &attrValue, sizeof(attrValue), 0, 0);
    return result == 0;
}

@end
