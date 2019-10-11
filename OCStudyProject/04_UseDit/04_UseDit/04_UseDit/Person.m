//
//  Person.m
//  04_UseDit
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

/**
 #import和#include的区别
    1.当我们在代码中使用两次#include的时候会报错：因为#include相当于拷贝头文件中的声明内容，所以会报重复定义的错误
      但是使用两次#import的话，不会报错，所以他可以解决重复导入的问题，他会做一次判断，如果已经导入一次就不导入了
 */

@implementation Person

- (void)setName:(NSString *)name{
    _name = name;
    NSLog(@"setName is Execute");
}
- (void)setAge:(NSInteger)age{
    //这里要注意，如果我们定义的全局变量是age而不是_age的话
    //这里不能用age = age进行赋值
    //但是也不能使用self.age = age,因为self.age等价于[self setAge:age]这样就会出现死循环了
    //所以我们在定义全局变量的时候一般都会加上一个下划线以便区分
    _age = age;
    NSLog(@"setAge is Execute");
}
- (NSString *)name{
    NSLog(@"getName is Execute");
    return _name;
}
- (NSInteger) age{
    NSLog(@"getAge is Execute");
    return _age;
}
- (NSString *)showInfo{
    NSLog(@"showInfo is Execute");
    return _name;
}

@end
