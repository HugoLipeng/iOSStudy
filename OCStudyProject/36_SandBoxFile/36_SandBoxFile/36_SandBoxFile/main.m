//
//  main.m
//  36_SandBoxFile
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        //获取沙盒目录
        //默认有三个文件夹
        //Documents：存放长期使用的文件(一般存放目录)
        //Library：系统存放文件
        //tmp：临时文件，app重启时，该目录下得文件清空
        
        //第一种获取方式，我们得到Home目录之后，手动的去拼接Document/Library
        NSString *homePath = NSHomeDirectory();
        NSLog(@"沙盒目录:%@",homePath);
        
        //第二种方式，直接使用Api获取
        //NSDocumentDirectory:Documents文件夹
        //NSLibraryDirectory:Library文件夹
        NSArray *array = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSLog(@"%@",array);
        
        NSArray *array1 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSLog(@"%@",array1);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
