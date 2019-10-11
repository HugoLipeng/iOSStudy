//
//  Nure.h
//  44_KVO
//
//  Created by jiangwei on 14-10-16.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Children;
@interface Nure : NSObject{
    Children *_children;
}

- (id) initWithChildren:(Children *)children;

@end
