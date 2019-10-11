//
//  Student.m
//  11_ProtocolDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void)study{
    NSLog(@"study");
}

//直接在.m文件中实现即可，不需要在.h文件中再次定义
//一般协议的方法，在这里标记一下，用途是在导航栏中快速的定位到这个方法是协议中的，对方法进行分为别类
#pragma mark - WithProtocol
- (void)finshTask{
    NSLog(@"完成任务");
}
- (void)dontLate{
#warning 代码过几天在补充
    NSLog(@"不迟到");
}

- (void)wearNeat{
    NSLog(@"穿戴整洁");
}

@end
