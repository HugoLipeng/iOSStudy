//
//  main.m
//  20_NSMutableDictionary
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//可变字典
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.-------------创建一个可变字典,大小为3
        NSMutableDictionary *md1 = [[NSMutableDictionary alloc] initWithCapacity:3];
        NSArray *array1 = [[NSArray alloc] initWithObjects:@"zhangsan",@"lis", nil];
        
        
        //2.-------------添加元素
        [md1 setObject:array1 forKey:@"zhang"];
        
        NSMutableDictionary *md2 = [[NSMutableDictionary alloc] initWithCapacity:3];
        [md2 addEntriesFromDictionary:md1];
        
        
        //3.-------------删除元素
        [md1 removeObjectForKey:@"zhang"];//以key删除
        [md1 removeAllObjects];//删除所有元素
        [md1 removeObjectsForKeys:array1];//以value删除
        
        
        //4.-------------循环遍历字典
        //快速遍历
        for (NSString *key in md1) {
            NSArray *values = [md1 objectForKey:key];
            for(NSString *v in values){
                NSLog(@"%@",v);
            }
        }
        
        //普通遍历
        NSArray *allKey = [md1 allKeys];
        for(int i=0;i<allKey.count;i++){
            NSArray *value = [md1 objectForKey:allKey[i]];
        }
        
        
        //字典是无序的
        
        
    }
    return 0;
}
