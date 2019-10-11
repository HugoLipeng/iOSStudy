//
//  main.m
//  32_NSStringCopy
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

//字符串为什么使用copy
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        NSMutableString *name = [NSMutableString stringWithString:@"jack"];
        p.name = name;
        
        //人的名字被修改了
        //如果Person的name是retain,则此处的name和person对象的name执行的是同一个字符串对象
        //此处的name修改之后，会导致person的name也被修改，破坏了person对象的封装性
        //正常情况下，我们会使用set方法设置名字
        //所以如果使用的是copy的话，就不会修改名字了
        [name appendString:@"-tom"];
        
        //Foundation框架中可复制的对象，当我们拷贝的是一个不可变对象时候
        //他的作用相当于retain(系统做的内存优化)
        
        //所以这里的如果换成NSString类型的时候，其实没有拷贝的动作的，因为NSString是不可变的
        //但是使用mutableCopy就可以做到拷贝了，mutableCopy是真正意义上的拷贝
        //mutableCopy拷贝方法，不管什么对象都是真实拷贝
        
        //[不可变对象 copy]是假拷贝，等价于[不可变对象 retain]
        //[不可变对象 mutableCopy是真拷贝
    }
    return 0;
}
