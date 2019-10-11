//
//  Person.h
//  04_UseDit
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    //点语法只能适用于set/get方法,如果没有对应的set/get方法的话，是不能使用.语法的
    //这里的get方法和其他语言不一样，只要有返回值就是get方法
    NSString *_name;
    NSInteger _age;
}

- (void)setName:(NSString *)name;
- (void)setAge:(NSInteger)age;

- (NSString *)name;
- (NSInteger) age;

//这里要注意，showInfo也是一个get方法
- (NSString *)showInfo;

//只定义，不实现，所以在调用[person test]的时候，编译时候不会报错
//但是运行的时候就会报错了，因为编译的时候只会判断方法有没有定义，而运行的时候是需要判断这个方法有没有实现
- (void)test;

@end
