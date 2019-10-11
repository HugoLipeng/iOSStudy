//
//  Dog.m
//  27_AutoReleasePool
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)dealloc{
    NSLog(@"dealloc is Executing...");
    [super dealloc];
}

@end
