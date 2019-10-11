//
//  Person.h
//  42_KVC
//
//  Created by jiangwei on 14-10-14.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface Person : NSObject{
@private
    NSString *_name;
    NSDog *_dog;
    
    NSInteger *age;
}

@end
