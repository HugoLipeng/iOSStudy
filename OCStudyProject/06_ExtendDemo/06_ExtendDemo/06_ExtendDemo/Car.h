//
//  Car.h
//  06_ExtendDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject{
    NSString *_brand;
    NSString *_color;
}

- (void)setBrand:(NSString *)brand;
- (void)setColor:(NSString *)color;
- (void)brake;
- (void)quicken;

@end
