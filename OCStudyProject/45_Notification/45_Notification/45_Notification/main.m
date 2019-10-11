//
//  main.m
//  45_Notification
//
//  Created by jiangwei on 14-10-18.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Children.h"
#import "Nure.h"

//Notification我们可以手动的触发监听，KVO是通过属性值的变化来触发监听的，相当于系统发送的广播，接受是我们控制的，发送不是
//由此可以看出Notification比KVO更灵活，更可控，相当于自己发送的广播，发送和接受都是我们控制的
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Children *chil = [[Children alloc] init];
        Nure *nure = [[Nure alloc] init];
    }
    return 0;
}
