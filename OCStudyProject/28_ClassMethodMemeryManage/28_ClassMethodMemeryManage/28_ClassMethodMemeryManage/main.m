//
//  main.m
//  28_ClassMethodMemeryManage
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"


int main(int argc, const char * argv[]) {
    
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    //通过类方法创建的对象是自动添加到自动释放池中，所以不需要手动的调用[person release]
    Person *person = [Person personWithName:@"jack"];
    //[person release]
    
    //下面都不需要手动的调用release方法了
    NSString *str = [NSString stringWithFormat:@"ss"];
    NSArray *array = [NSArray array];
    array = @[@"xx"];//优化语法
    str = @"aa";
    
    [pool release];
    
    return 0;
}
