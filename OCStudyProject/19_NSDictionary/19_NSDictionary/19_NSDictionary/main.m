//
//  main.m
//  19_NSDictionary
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//由键值对key-value构成的数据集合
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.---------------------字典的创建
        NSArray *array1 = [NSArray arrayWithObjects:@"zhangsan",@"zhangfei", nil];
        NSArray *array2 = [NSArray arrayWithObjects:@"lisi",@"liping", nil];
        
        //第一个元素:key:@"zhang" value:array1
        //第二个元素:key:@"li"  value:array2
        NSDictionary *dict = [[NSDictionary alloc] initWithObjectsAndKeys:array1,@"zhang",array2,@"li", nil];
        NSLog(@"%@",dict);
        
        //存放一个元素
        NSDictionary *dict2 = [NSDictionary dictionaryWithObject:array1 forKey:@"zhang"];
        
        
        //2.---------------------获取所有的key
        NSArray *allKeys = [dict allKeys];
        
        
        //3.---------------------获取所有的value
        //可能为二维数组
        NSArray *allValues = [dict allValues];
        
        
        //4.---------------------通过key获取value
        NSArray *values = [dict objectForKey:@"zhang"];
        
        
        //5.---------------------优化的语法
        NSDictionary *dict3 = @{@"zhangsan":array1,@"lisi":array2};
        NSLog(@"%@",dict3);
        
        NSArray *array4 = dict3[@"zhang"];
        
        
    }
    return 0;
}
