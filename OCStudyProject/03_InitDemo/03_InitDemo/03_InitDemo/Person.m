//
//  Person.m
//  03_InitDemo
//
//  Created by jiangwei on 14-10-10.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithName:(NSString *)name withAge:(NSInteger)age{
    //固定写法，可以背下来哦~~
    
    //调用父类的初始化方法
    self = [super init];
    
    if(self != nil){
        _name = name;
        _age = age;
    }
    
    return self;
}

- (void)test{
    NSLog(@"test");
}

- (void)showInfo{
    [self test];//调用自己的方法
    NSLog(@"name is %@ and age is %d",_name,_age);
}

@end
