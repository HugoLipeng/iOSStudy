//
//  Student.h
//  24_MemeryManager
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@interface Student : Person{
    NSString *_code;
}

- (void)setCode:(NSString *)code;
- (NSString *)code;
- (void)dealloc;

@end
