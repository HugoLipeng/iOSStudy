//
//  main.m
//  26_NSArrayMemeryManager
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Dog.h"

int main(int argc, const char * argv[]) {
    
    Dog *dog1 = [[Dog alloc] init];
    Dog *dog2 = [[Dog alloc] init];
    
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    //数组会对每一个元素retain
    [array addObject:dog1]; //dog1计数=2
    [array addObject:dog2]; //dog2计数=2
    
    [dog1 release];
    [dog2 release];
    
    //当数组销毁的时候，会将所有的元素release
    [array release];//数组销毁
    
    //当数组移除所有的元素的时候，会讲所有的元素release
    [array removeAllObjects];
    
    return 0;
}
