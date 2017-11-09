//
//  ViewController.m
//  ZJJPlistDataSave
//
//  Created by 张锦江 on 2017/11/9.
//  Copyright © 2017年 ZJJ. All rights reserved.
//

// 本地存储小对象类型，plist 存储（NSData,NSArray,NSDictionary）

#import "ViewController.h"
#import "ZJJDontBackUpTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 存储的路径
    NSString *path = [NSString stringWithFormat:@"%@/Documents/zjj.plist",NSHomeDirectory()];
    // 设置不备份，否则App Store会拒绝
    [ZJJDontBackUpTool addSkipBackupAttributeToItemAtURL:[NSURL URLWithString:path]];
    // 模拟数据请求到的字典，要存储起来
    // 但是必须要经过筛选，因为里面对象如果是null，就无法存储
    // 判断过程再次省略
    NSDictionary *dic = @{@"name":@"zjj",@"age":@"18",@"sex":@"1"};
    [dic writeToFile:path atomically:YES];
    // 存入完成，取出数据
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    NSLog(@"dict=%@",dict);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
