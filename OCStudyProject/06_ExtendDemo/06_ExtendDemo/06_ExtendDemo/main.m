//
//  main.m
//  06_ExtendDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Truck.h"
#import "Taxi.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建卡车类
        Truck *truck = [[Truck alloc] init];
        [truck setBrand:@"东风"];
        [truck setColor:@"红色"];
        
        [truck brake];
        [truck quicken];
        [truck unload];
        
        Taxi *taxi = [[Taxi alloc] init];
        taxi.brand = @"现代";
        taxi.color = @"黑色";
        
        [taxi brake];
        [taxi quicken];
        [taxi printTick];
    }
    return 0;
}
