//
//  Children.m
//  44_KVO
//
//  Created by jiangwei on 14-10-16.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Children.h"

@implementation Children

- (id) init{
    self = [super init];
    if(self != nil){
        //启动定时器
        [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
        self.hapyValue= 100;
    }
    return self;
}

- (void) timerAction:(NSTimer *) timer{
    //使用set方法修改属性值，才能触发KVO
    _hapyValue--;
    NSLog(@"%@",_hapyValue);
    if(_hapyValue <80){
        //发送通知
        //这里和KVO的区别，我们可以手动的发送通知
        //注意通知的名称，传递的参数必须和定义通知的地方的参数值要一致
        //将Children对象传递过去
        [[NSNotificationCenter defaultCenter] postNotificationName:@"happyValueNotification" object:self];
    }

}


@end
