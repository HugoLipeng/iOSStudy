//
//  Nanny.m
//  12_DesignStyle
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Nanny.h"

#import "Children.h"

@implementation Nanny

- (void)wash:(Children *)children{
    NSLog(@"小孩脏了，护士帮小孩洗澡");
}

- (void)play:(Children *)children{
    NSLog(@"小孩哭了，护士和小孩玩耍");
}

@end
