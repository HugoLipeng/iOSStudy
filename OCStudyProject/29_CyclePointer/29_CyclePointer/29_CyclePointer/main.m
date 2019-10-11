//
//  main.m
//  29_CyclePointer
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Dog.h"
#import "Person.h"

//循环引用
//是一个很麻烦的一件事，完全靠经验
int main(int argc, const char * argv[]) {
    
    Person *p = [[Person alloc] init];
    Dog *dog = [[Dog alloc] init];
    
    [p setDog:dog];//dog计数:2
    
    [dog setPerson:p];//person计数:2
    
    [p release]; //person计数：1
    [dog release];//dog计数：1
    
    //没有释放的原因是dealloc方法中没有被执行，里面的释放代码也就没执行了，dog和person各自在等待，形成环状了
    //解决版本就是切断他们之间的联系
    //@property中不使用retain,使用assgin
    
    NSLog(@"is over");
    
    return 0;
}
