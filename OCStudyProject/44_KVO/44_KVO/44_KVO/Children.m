//
//  Children.m
//  44_KVO
//
//  Created by jiangwei on 14-10-16.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Children.h"

@implementation Children

- (id) init{
    self = [super init];
    if(self != nil){
        //启动定时器
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
        self.hapyValue= 100;
    }
    return self;
}

- (void) timerAction:(NSTimer *) timer{
    //使用set方法修改属性值，才能触发KVO
    
    int value = _hapyValue;
    [self setHapyValue:--value];
    
    int values = _hurryValue;
    [self setHurryValue:--values];
}


@end
