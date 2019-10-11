//
//  Person.m
//  02_ClassDemo
//
//  Created by jiangwei on 14-10-10.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

//实现方法
- (void) shopping : (float)price{
    NSLog(@"%@ shopping %f",_name,price);
}

- (void)setName:(NSString *)name{
    _name = name;
}
- (void)setAge:(NSInteger)age{
    _age = age;
}
- (NSString *)name{
    return _name;
}
- (NSInteger)age{
    return _age;
}
- (void)setName:(NSString *)name setAge:(NSInteger)age{
    _name = name;
    _age = age;
}
+ (Person *)newPerson{
    return [[Person alloc] init];
}

@end
