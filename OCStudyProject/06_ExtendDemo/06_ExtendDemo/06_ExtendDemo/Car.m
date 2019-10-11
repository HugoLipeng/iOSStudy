//
//  Car.m
//  06_ExtendDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Car.h"

@implementation Car
- (void)setBrand:(NSString *)brand{
    _brand = brand;
}
- (void)setColor:(NSString *)color{
    _color = color;
}
- (void)brake{
    NSLog(@"刹车");
}
- (void)quicken{
    NSLog(@"加速");
}
@end
