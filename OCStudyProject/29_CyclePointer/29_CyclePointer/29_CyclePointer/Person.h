//
//  Person.h
//  29_CyclePointer
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dog;

@interface Person : NSObject

@property(nonatomic,retain,readwrite) Dog *dog;

- (void)dealloc;

@end
