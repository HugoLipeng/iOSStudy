//
//  main.m
//  09_ClassTarget
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+Extension.h"

//这里只是为了演示如果想扩展一个类的功能，可以通过继承的方式去实现
//但是通过继承来实现这项功能话，有点大材小用的感觉，因为我们只需要一个判断邮箱的合法性的方法，所以继承就大了，没必要
//但是这里会出错，因为NSString是不允许继承的

//所以这里我们就要用到一个很强大的技术：类目
//类目的定义和累的定义相似，在.h文件里声明，.m文件中实现方法

//类目可以覆盖方法，但是不会再执行之前的那个方法了，而是调用新的方法
//类目不能为类添加属性(实例变量)

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *s = @"123456@qq.com";
        BOOL isEmail = [s validateEmail];
        if(isEmail){
            NSLog(@"有效邮箱");
        }else{
            NSLog(@"无效邮箱");
        }
        
        //调用的是我们类目中的intValue方法
        NSInteger i = [s intValue];
        NSLog(@"intValue is %i",i);
    }
    return 0;
}
