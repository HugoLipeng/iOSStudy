//
//  Person.h
//  28_ClassMethodMemeryManage
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    NSString *_name;
}

- (void)dealloc;

+ (id)personWithName:(NSString*)name;

@end
