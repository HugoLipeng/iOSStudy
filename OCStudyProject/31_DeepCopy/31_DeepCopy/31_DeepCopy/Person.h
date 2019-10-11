//
//  Person.h
//  31_DeepCopy
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCopying>

@property(nonatomic,retain)NSMutableArray *apples;
@property(nonatomic)int age;

@end
