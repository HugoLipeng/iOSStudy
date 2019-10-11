//
//  Taxi.m
//  06_ExtendDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Taxi.h"

@implementation Taxi

- (void)printTick{
    [super brake];
    [self brake];
    NSLog(@"%@出租车打印了发票，公司为:%@,颜色为:%@",_brand,_company,_color);
}

@end
