//
//  Nure.m
//  12_DesignStyle
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Nure.h"

#import "Children.h"

@implementation Nure

- (void)wash:(Children *)children{
    NSLog(@"小孩脏了，保姆帮小孩洗澡");
}

- (void)play:(Children *)children{
    NSLog(@"小孩哭了，保姆和小孩玩耍");
}

@end
