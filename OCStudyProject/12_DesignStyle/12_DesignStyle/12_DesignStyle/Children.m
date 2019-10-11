//
//  Children.m
//  12_DesignStyle
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Children.h"

//这里用到了保姆的一些动作
//假如现在想请一个护士，那么我们又要去从新去请一个护士，那么这里面代码需要改，把保姆的地方换成护士的地方
//产生的原因就是因为耦合度太高了，保姆和孩子耦合在一起，如果需要换的话，就需要改动代码
//
@implementation Children

- (id)init{
    self = [super init];
    if(self != nil){
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction:) userInfo:nil repeats:YES];
    }
    return self;
}

-(void)setDelegate:(id)delegate{
    _delegate = delegate;
}

- (void)timerAction:(NSTimer *)timer{
    timeValue++;
    if(timeValue == 5){
        [_delegate wash:self];
    }
    if(timeValue == 10){
        [_delegate play:self];
    }
}

@end
