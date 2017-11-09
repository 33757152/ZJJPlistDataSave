//
//  ZJJDontBackUpTool.h
//  ZJJPlistDataSave
//
//  Created by 张锦江 on 2017/11/9.
//  Copyright © 2017年 ZJJ. All rights reserved.
//

// 不让系统自动备份至iCloud

#import <Foundation/Foundation.h>

@interface ZJJDontBackUpTool : NSObject

+ (BOOL)addSkipBackupAttributeToItemAtURL:(NSURL *)URL;

@end
