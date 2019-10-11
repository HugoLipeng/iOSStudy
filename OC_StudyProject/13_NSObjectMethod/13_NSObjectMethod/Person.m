//
//  Person.m
//  13_NSObjectMethod
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)invoke{
    NSLog(@"invoke is Executing...");
    [self demo1];//对象调用
    
    //performSelector方法调用
    NSString *result = [self performSelector:@selector(demo1)];
    NSLog(@"%@",result);
    
    //调用有一个参数的方法
    [self performSelector:@selector(demo2:) withObject:@"jiangwei"];
    
    //调用有两个参数的方法
    [self performSelector:@selector(demo3:withName:) withObject:@"jiangwei" withObject:@"man"];
    
    //延迟调用一个方法
    //此处的延迟调用，代码不会停留在此处，为了不阻塞线程
    [self performSelector:@selector(demo1) withObject:NULL afterDelay:2.5];
    
    //如果没有以下代码的话，上面的延迟调用就不会有效果的，因为他不会阻塞当前线程，所以当前线程中后续的代码会继续执行
    //在main.m中得main方法中，会直接return，这样程序就运行结束了，所以来不及执行2.5s之后方法执行
    //以下代码让执行过程停在此处
    [[NSRunLoop currentRunLoop] run];
    
}

- (NSString *)demo1{
    NSLog(@"demo1");
    return @"demo1";
}

- (void)demo2:(NSString *)str{
    NSLog(@"str = %@",str);
}

- (void)demo3:(NSString *)str withName:(NSString *)name{
    NSLog(@"str = %@,name = %@",str,name);
}

@end
