//
//  Person.m
//  25_Property
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

//有时候我们不想定义属性为_开头的
//这时候我们就可以使用@synthesize，来修改我们想要的属性名

//这时候属性_userName变成了$userName

@implementation User
@synthesize userName = $userName;

@end
