//
//  WithProtocol.h
//  11_ProtocolDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WithProtocol <NSObject>

//默认是必须实现的

//必须实现
@required
- (void)finshTask;
- (void)dontLate;

//可选实现
@optional
- (void)wearNeat;

@end
