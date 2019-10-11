//
//  Person.m
//  42_KVC
//
//  Created by jiangwei on 14-10-14.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (NSString *)description{
    NSLog(@"%@",_name);
    return _name;
}

@end
