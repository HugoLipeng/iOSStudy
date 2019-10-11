//
//  main.m
//  02_ClassDemo
//
//  Created by jiangwei on 14-10-10.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

//类的定义放在.h文件中
//类的实现放在.m文件中

//定义一个类的步骤
//定义类名、编写类的属性、编写类的行为

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建对象
        //在内存中申请一块内存区域
        //Person *person = [Person alloc];
        //调用初始化方法，初始化一些默认数据
        //可能上面申请的内存之前有被使用过，还会有以前的数据。所以我们需要将其数据清空，这时候就会将默认值进行赋值(相当于清空操作)
        //person = [person init];
        
        //合并
        //这里申请了两块内存：一个是对象指针变量，一个是alloc申请的
        //可以看出alloc/init方法是类方法、可以查看NSObject对象的定义
        Person *person = [[Person alloc] init];
        
        //还有另外的一种方式创建一个对象,但是这种方式不建议使用，因为这种方式相当于把上面的两个合并
        //有时候我们需要将上面的两个步骤进行分开操作的
        //Person *person1 = [Person new];
        
        //设置名字
        [person setName:@"jaingwei"];
        
        //调用实例方法shopping
        [person shopping:200];
        
        Person *person1 = [[Person alloc] init];
        [person1 setName:@"huangdaoyang"];
        [person1 shopping:300];
        //同时设置两个属性的值，但是这种方式不建议使用，建议使用set方法
        [person1 setName:@"huangdaoyang" setAge:22];
        
        //get方法调用
        NSString *person_name = [person name];
        NSLog(@"name is %@",person_name);
        NSString *person1_name = [person1 name];
        NSLog(@"name is %@",person1_name);
        
        //类方法调用
        Person *person2 = [Person newPerson];
        [person2 setName:@"shixin" setAge:22];
        [person2 shopping:400];
        
        //空指针
        Person *person3 = nil;
        //不执行任何操作，但是也不会报错空指针异常
        [person3 setName:@"空对象" setAge:22];
        
        
    }
    return 0;
}
