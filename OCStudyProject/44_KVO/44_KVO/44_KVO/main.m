//
//  main.m
//  44_KVO
//
//  Created by jiangwei on 14-10-16.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Children.h"
#import "Nure.h"

//KVO:Key Value Observing.监听一个对象的属性被修改的事件，相当于观察者模式
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Children *children = [[Children alloc] init];
        
        Nure *nure = [[Nure alloc] initWithChildren:children];
        
        
    }
    return 0;
}
