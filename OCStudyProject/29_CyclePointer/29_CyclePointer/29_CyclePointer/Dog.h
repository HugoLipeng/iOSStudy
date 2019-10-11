//
//  Dog.h
//  29_CyclePointer
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

@interface Dog : NSObject

//这里不用retain,如果使用retain的话，会形成循环引用
@property(nonatomic,assign,readwrite) Person *person;

- (void)dealloc;

@end
