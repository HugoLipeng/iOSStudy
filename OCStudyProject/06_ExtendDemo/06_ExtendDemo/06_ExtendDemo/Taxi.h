//
//  Taxi.h
//  06_ExtendDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Car.h"

@interface Taxi : Car{
    NSString *_company;//所属公司
}

//打印发票
- (void)printTick;

@end
