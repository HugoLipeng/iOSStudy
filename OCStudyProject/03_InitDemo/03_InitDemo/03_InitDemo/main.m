//
//  main.m
//  03_InitDemo
//
//  Created by jiangwei on 14-10-10.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //初始化方法只能调用一次
        Person *person = [[Person alloc] initWithName:@"jiangwei" withAge:22];
        [person showInfo];
        
        person = [[Person alloc] init];
        [person showInfo];
        
        //id类型,类似于void*
        //但是id类型一般不这么使用，一般会作为方法的返回值和传入的参数类型
        id person1 = [[Person alloc] initWithName:@"huangdaoyang" withAge:23];
        [person1 showInfo];
    }
    return 0;
}
