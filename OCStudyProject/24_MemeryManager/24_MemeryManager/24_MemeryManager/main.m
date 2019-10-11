//
//  main.m
//  24_MemeryManager
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Dog.h"

//内存管理
//alloc用来创建对象，创建完成之后，引用计数为1，只调用一次
//retain使引用计数+1，可以多调用几次
//release使引用计数-1，可以多调用几次
//当引用计数为0的时候会调用dealloc
//最新的Xcode版本默认情况下会开启ARC机制的，当开启这个机制之后，我们就不能手动的显示调用这些方法，编译器会报错
//所以我们可以将这个默认状态的ARC关闭，但是这个只是为了测试使用

int main(int argc, const char * argv[]) {

    /*
    Person *person = [[Person alloc] init];//引用计数为1
    NSLog(@"引用计数:%ld",[person retainCount]);
    
    //引用计数加1
    [person retain];
    
    [person release];
    
    NSLog(@"引用计数:%ld",[person retainCount]);
    [person release];
     */
    
    
    Dog *dog = [[Dog alloc] init];
    [dog setName:@"小黑"];
    
    Dog *dog1 = [[Dog alloc] init];//引用计数为1
    [dog setName:@"大黄"];
    
    Person *p1 = [[Person alloc] init];
    [p1 setName:@"张三"];
    [p1 setDog:dog];
    [p1 setDog:dog1];//狗的引用替换成了大黄
    
    Person *p2 = [[Person alloc] init];
    [p2 setName:@"李四"];
    [p2 setDog:dog];
    
    //这里引用计数为1，这个和我们之前说的引用计数管理有矛盾，所以我们在使用的时候需要手动的retain
    NSLog(@"引用计数为:%ld",[dog retainCount]);
    
    [dog1 release];//因为alloc的时候引用计数就为1了
    
    NSLog(@"dog1:%ld",[dog1 retainCount]);
    
    //这里就有一个问题了，dog1对象已经被销毁了，但是setDog对象还是用了dog1对象调用方法了，这就会报错了
    //所以又对set方法进行改进了
    [p1 setDog:dog1];
    
    //当人销毁的时候，还需要对狗的引用-1
    //在人的dealloc方法中实现
    
    Person *p3 = [[Person alloc] initWithDog:dog1];
    [dog1 release];//dog1的引用计数：0
    
    [p3 playDog];
    
    [p3 release];
    
    return 0;
}
