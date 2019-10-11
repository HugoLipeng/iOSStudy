//
//  main.m
//  21_NSNumber
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//包装基本数据类型
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.----------------创建NSNumber
        //封包
        NSNumber *intNumber = [NSNumber numberWithInt:3];
        NSNumber *floatNumber = [NSNumber numberWithFloat:9.8f];
        NSArray *array = @[intNumber,floatNumber];
        
        //解包
        int value = [intNumber intValue];
        float values = [floatNumber floatValue];
        NSString *str = [intNumber stringValue];
        NSLog(@"%@",str);
        
        //优化语法
        NSNumber *intNumbers = @12;
        
        
        //如何将结构体存入到数组中
        //使用NSValue对结构体进行封装
        //NSValue是NSNumber的父类
        //封包
        NSRange rang = {1,3};
        NSValue *v = [NSValue valueWithRange:rang];
        
        //解包
        rang = [v rangeValue];
        
        
        //对自定义的结构体进行封包
        struct WXPoint{
            float x;
            float y;
        };
        
        struct WXPoint p = {50,100};
        //第一个参数是结构体的变量地址，第二个参数是类型
        NSValue *v1 = [NSValue value:&p withObjCType:@encode(struct WXPoint)];
        
        //解包
        struct WXPoint p1;
        [v1 getValue:&p1];
        
        
        //NSNULL的使用
        //数组中是没有办法存放一个空对象的nil
        //NSArray *nilArray = @[nil,nil,nil];//报错的
        //有时候我们需要在数组中存入一个空对象的需求
        NSNull *n1 = [NSNull null];
        NSNull *n2 = [NSNull null];
        NSArray *nullArray = @[n1,n2];
        NSLog(@"nullArray =%@",nullArray);
        
        
    }
    return 0;
}
