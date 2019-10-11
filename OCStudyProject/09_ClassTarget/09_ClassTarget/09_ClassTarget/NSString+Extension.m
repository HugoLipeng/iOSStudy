//
//  Extension.m
//  09_ClassTarget
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

- (BOOL)validateEmail{
    NSRange range = [self rangeOfString:@"@"];
    if(range.location == NSNotFound){
        return NO;
    }else{
        return YES;
    }
}

//这里可以看出，这里是没办法调用NSString中得intValue方法，这个和继承有区别的
- (NSInteger)intValue{
    NSLog(@"intValue");
    return 0;
}

@end
