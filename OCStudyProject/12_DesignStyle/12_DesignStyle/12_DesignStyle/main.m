//
//  main.m
//  12_DesignStyle
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Children.h"
#import "Nure.h"
#import "Nanny.h"

//核心:id类型+协议
//做到低耦合操作
//同时也可以做到两个类之间的通信

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Children *child = [[Children alloc] init];
        
        Nure *nure = [[Nure alloc] init];
        Nanny *nanny= [[Nanny alloc] init];
        
        [child setDelegate:nanny];
//      [child setNure:nure];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
