//
//  Truck.h
//  06_ExtendDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Car.h"
//卡车类继承Car
@interface Truck : Car{
    float _maxWeight;//最大载货量
}

//覆盖父类的方法brake
//优先调用子类的方法
- (void)brake;

- (void)unload;

@end
