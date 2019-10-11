
//
//  ExtensionString.m
//  09_ClassTarget
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "ExtensionString.h"

@implementation ExtensionString

- (BOOL)validateEmail{
    NSRange range = [self rangeOfString:@"@"];
    if(range.location == NSNotFound){
        return NO;
    }else{
        return YES;
    }
}

@end
