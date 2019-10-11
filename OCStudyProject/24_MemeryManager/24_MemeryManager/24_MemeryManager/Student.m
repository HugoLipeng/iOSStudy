//
//  Student.m
//  24_MemeryManager
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)setCode:(NSString *)code{
    if(_code != code){
        [_code release];
        [code retain];
    }
}
- (NSString *)code{
    return _code;
}

- (void)dealloc{
    [_code release];
    //如果这里没有调用父类(Person)的dealloc方法，那么_dog就没有release
    //所以在外面调用的时候，当Student被销毁的时候，_dog并没有release,这就有问题了
    //所以我们一般会调用父类的dealloc方法
    //[super dealloc];
}



@end
