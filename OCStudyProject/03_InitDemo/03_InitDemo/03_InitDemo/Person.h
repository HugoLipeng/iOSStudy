//
//  Person.h
//  03_InitDemo
//
//  Created by jiangwei on 14-10-10.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
}

//自定义初始化方法，必须以init开头
- (id)initWithName:(NSString *)name withAge:(NSInteger)age;

//打印信息
- (void)showInfo;

@end
