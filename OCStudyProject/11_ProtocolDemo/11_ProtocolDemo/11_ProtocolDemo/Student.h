//
//  Student.h
//  11_ProtocolDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "WithProtocol.h"

@interface Student : NSObject <WithProtocol>

- (void)study;

@end
