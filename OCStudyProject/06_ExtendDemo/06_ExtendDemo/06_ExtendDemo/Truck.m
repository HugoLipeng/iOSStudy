//
//  Truck.m
//  06_ExtendDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Truck.h"

@implementation Truck

- (void)brake{
    [super brake];
    NSLog(@"Truck类中的brake方法");
}

- (void)unload{
    [super brake];//调用父类的方法
    [self brake];//也是可以的
    NSLog(@"%@的卡车卸货了，载货量:%.2f,汽车的颜色:%@",_brand,_maxWeight,_color);
}

@end
