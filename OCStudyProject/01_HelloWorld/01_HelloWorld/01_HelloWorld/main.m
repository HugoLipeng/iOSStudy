//
//  main.m
//  01_HelloWorld
//
//  Created by jiangwei on 14-10-10.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

//OC中使用#import导入一个头文件
//和#include<Foundation/Foundation.h>效果是相同的，但是还是有区别的，后续会说明
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    //创建一个自动释放池
    @autoreleasepool {
        //把"Hello,World!"字符串打印到控制台
        //打印的时候是自动换行的
        //OC语言中字符串用@""表示
        //NS开头都是OC里面的命名习惯,需要区分,jobs成立的Next setp公司有关系
        NSLog(@"Hello, World!");
        
        //OC中常用的类型
        NSInteger s = 10;
        
        //布尔类型
        BOOL a = YES;//NO
        BOOL b = TRUE;//FALSE
        
        //OC中的字符串（不属于基本类型，是对象类型，是指针）
        NSString *str = @"jiangwei";
        
        //%@打印一个字符串对象
        NSLog(@"%@",str);
        
        //表示范围的结构体
        //第一个参数是起始位置
        //第二个参数是范围长度
        NSRange rang = {1,3};
        NSMakeRange(1,3);//等价于上面的一行代码
    }
    return 0;
}
