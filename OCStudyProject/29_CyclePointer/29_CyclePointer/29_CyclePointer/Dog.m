//
//  Dog.m
//  29_CyclePointer
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)dealloc{
    //[_person release];
    NSLog(@"dog dealloc");
    [super dealloc];
}

@end
