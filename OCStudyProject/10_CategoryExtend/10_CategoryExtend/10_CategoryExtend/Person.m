//
//  Person.m
//  10_CategoryExtend
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

//这个叫做延展
//或者private省去也是没有问题的
@interface Person (private)
    - (void)_showInfo;
@end

@implementation Person{
    //在这里定义属性,这个属性也是私有的
    //但是这种方式和之前定义的@private的区别
    //两者的区别就是一个在.h文件中定义的，一个是.m文件中定义的
    //如果是开源的话，一般是开放.h和.m文件
    //如果是闭源的话，一般只开放.h文件
}

- (void)work{
    //这行代码现在编译是没有问题的，在Xcode之前版本这样调用的话是有问题的，因为我们在C语言中在方法实现之前去调用的话，就必须要在之前声明一下
    //这里我们就使用延展技术实现私有方法
    //当然Xcode之后的版本修正了这个问题，所以现在延展的用途就不是很大了
    //相当于C语言中的前向声明
    [self _showInfo];
    NSLog(@"开始工作了");
}

//私有方法，只是在.m文件中定义了，没有在.h文件中声明，一般是在类中自己使用的
- (void)_showInfo{
    NSLog(@"我的信息");
}

@end
