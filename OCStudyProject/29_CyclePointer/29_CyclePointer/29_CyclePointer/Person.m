//
//  Person.m
//  29_CyclePointer
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

#import "Dog.h"

@implementation Person

- (void)dealloc{
    [_dog release];
    NSLog(@"Person dealloc");
    [super dealloc];
}

@end
