//
//  main.m
//  04_UseDit
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person = [[Person alloc] init];
        //此处的点语法调用的是set方法，等价于[person setName:@"jiangwei"];
        person.name = @"jiangwei";
        person.age = 22;
        //此处的点语法调用的get方法，等价于NSString *name = [person name];
        NSString *name = person.name;
        NSLog(@"name is %@",name);
        
        name = person.showInfo;
        NSLog(@"name is %@",name);
        
        //调用test方法
        [person test];
    }
    return 0;
}
