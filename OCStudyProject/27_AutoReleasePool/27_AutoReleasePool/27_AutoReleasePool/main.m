//
//  main.m
//  27_AutoReleasePool
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    /*
    //创建一个自动释放池
    //有作用域的问题，在{}中定义的东西外部是不能访问的，这点和NSAutoreleasePool有区别的
    @autoreleasepool {//等价于[[NSAutoreleasePool alloc] init]
       
        Dog *dog2 = [[Dog alloc] init];
        [dog2 retain];
        
    }//等价于[pool release]
    
    //创建一个自动释放池
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Dog *dog1 = [[Dog alloc] init];//计数：1
    
    //将dog1对象加入到自动释放池中，却别于之前的release方法
    //加入到自动释放池中之后，不是代表我们不需要管理引用了，只是自动释放池自动会调用一次release
    //当自动释放池销毁的时候，释放池会对池中每一个对象调用一次release
    [dog1 autorelease];
    NSLog(@"dog1计数:%ld",dog1.retainCount);
    
    //销毁自动释放池
    //这时候会调用dog1的release方法，dog1对象就被销毁了
    [pool release];
    */
    
    //自动释放池的嵌套
    NSAutoreleasePool *pool1 = [[NSAutoreleasePool alloc] init];
    
    //添加我们的代码
    //dog1放到了pool1中
    Dog *dog1 = [[Dog alloc] init];
    [dog1 autorelease];
    
    //自动释放池的嵌套
    NSAutoreleasePool *pool2 = [[NSAutoreleasePool alloc] init];
    
    //dog2放到了pool2中
    Dog *dog2 = [[Dog alloc] init];
    [dog2 autorelease];
    
    //pool2销毁了
    [pool2 autorelease];
    
    //pool1销毁了
    [pool1 release];
    
    
    //下面的代码就是有问题的
    //[person setDog:[[Dog alloc] init];
    //正确的写法
    //Dog *dogs = [[[Dog alloc] init] autorelease];
    
    
     
    return 0;
}
