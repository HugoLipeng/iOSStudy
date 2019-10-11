//
//  Nure.m
//  44_KVO
//
//  Created by jiangwei on 14-10-16.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Nure.h"
#import "Children.h"

@implementation Nure

- (id) init{
    self = [super init];
    if(self != nil){
        
        //监听一个通知，当收到通知时，调用notificationAction方法
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationAction) name:@"happyValueNotification" object:nil];
        
    }
    return self;
}


- (void) notificationAction:(NSNotification *)notification{
    //这里我们拿到Children对象进行操作
    Children *children = notification.object;
    NSLog(@"触发通知");
}

- (void)dealloc{
    //移除指定的通知，不然会造成内存泄露
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"happyValueNotification" object:nil];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
