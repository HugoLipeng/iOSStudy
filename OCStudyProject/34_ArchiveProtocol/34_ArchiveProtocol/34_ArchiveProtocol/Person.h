//
//  Person.h
//  34_ArchiveProtocol
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//类只有实现NSCoding协议才能归档
@interface Person : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;
@property(nonatomic,retain)NSArray *apples;

- (NSString *)description;

@end
