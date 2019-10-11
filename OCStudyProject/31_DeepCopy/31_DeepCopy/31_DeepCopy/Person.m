//
//  Person.m
//  31_DeepCopy
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)copyWithZone:(NSZone *)zone{
    //创建一个新的副本对象
    //这个方法是会被继承的，所以这里还是不用
    //[Person allocWithZone:<#(struct _NSZone *)#>];
    Person * p = [[self class] allocWithZone:zone];
    //p.apples = _apples;//是指针赋值，所以还是浅拷贝
    //深拷贝
    //拷贝之后引用计数会+1，需要release以下
    p.apples = [_apples mutableCopy];
    p.age = _age;
    
    [p.apples release];
    
    //但是如果我们使用->语法就不需要了，因为我们没有使用set方法，引用计数没有操作
    //但是这种方式我们不采用
    //p->_apples = [_apples mutableCopy];
    
    return p;
}

@end
