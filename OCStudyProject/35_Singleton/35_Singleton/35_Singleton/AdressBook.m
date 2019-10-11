//
//  AdressBook.m
//  35_Singleton
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "AdressBook.h"

static AdressBook *instance = nil;//不能让外部访问，同时放在静态块中的

@implementation AdressBook

+ (AdressBook *)shareInstance{
    if(instance == nil){
        instance = [[AdressBook alloc] init];
    }
    return instance;
}

//限制方法，类只能初始化一次
//alloc的时候调用
+ (id) allocWithZone:(struct _NSZone *)zone{
    if(instance == nil){
        instance = [super allocWithZone:zone];
    }
    return instance;
}

//拷贝方法
- (id)copyWithZone:(NSZone *)zone{
    return instance;
}

//需要重写release方法，不能让其引用+1
- (id)retain{
    return self;
}

//需要重写release方法，不能让其引用-1
- (oneway void)release{
    //do Nothing...
}

- (id)autorelease{
    return self;
}

@end
