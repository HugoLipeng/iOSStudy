//
//  Person.h
//  24_MemeryManager
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;
@interface Person : NSObject{
    Dog *_dog;
    NSString * _name;
}

- (id)initWithDog:(Dog*)dog;
- (void)setName:(NSString *)name;
- (void)setDog:(Dog *)dog;
- (void)playDog;
- (Dog *)dog;

- (void)dealloc;
@end
