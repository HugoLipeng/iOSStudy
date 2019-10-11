//
//  main.m
//  23_Exception
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //捕获异常
        @try {
            int a = 1/0;
        }
        @catch (NSException *exception) {
            
        }
        @finally {
            
        }
    }
    return 0;
}
