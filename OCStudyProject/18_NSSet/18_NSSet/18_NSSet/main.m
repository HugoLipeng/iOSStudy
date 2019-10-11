//
//  main.m
//  18_NSSet
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//和NSArray的区别
//NSArray是有序的集合，每个元素都是有一个下标，
//NSSet是无序的集合，不能使用下标取数据，而且不能存放相同的对象
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.-------------------创建方法
        NSString *s1 = @"zhangsan";
        NSString *s2 = @"lisi";
        
        NSSet *set1 = [[NSSet alloc] initWithObjects:s1,s2, nil];
        NSSet *set2 = [NSSet setWithObjects:s1,s2, nil];
        
        //把数组中的元素取出来存放到set中
        //NSSet *set3 = [NSSet setWithArray:];
        
        
        //2.-------------------allObjects
        //将其中的对象存放到数组中(NSSet转成数组)
        NSArray *array1 = [set1 allObjects];
        
        
        //3.-------------------count
        //返回元素的个数
        NSUInteger count = [set1 count];
        
        
        //4.-------------------anyObject
        //从set中随机返回某个元素
        NSString *s3 = [set1 anyObject];
    }
    return 0;
}
