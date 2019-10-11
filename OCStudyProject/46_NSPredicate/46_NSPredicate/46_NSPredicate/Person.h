//
//  Person.h
//  46_NSPredicate
//
//  Created by jiangwei on 14-10-18.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property NSString *name;
@property NSInteger age;

+ (id)personWithName:(NSString *)name andAge:(NSInteger)age;

@end
