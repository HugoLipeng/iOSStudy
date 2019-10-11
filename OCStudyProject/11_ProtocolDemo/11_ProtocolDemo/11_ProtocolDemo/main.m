//
//  main.m
//  11_ProtocolDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Student *stu = [[Student alloc] init];
        [stu finshTask];
        [stu dontLate];
        
        //判断wearNeat方法有没有在Student中实现了
        if([stu respondsToSelector:@selector(wearNeat)]){
            [stu wearNeat];
        }
    }
    return 0;
}
