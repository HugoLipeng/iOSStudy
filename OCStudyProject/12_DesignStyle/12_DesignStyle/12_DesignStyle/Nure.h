//
//  Nure.h
//  12_DesignStyle
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Children.h"

@interface Nure : NSObject<ChildrenDelegate>

- (void)wash:(Children *)children;
- (void)play:(Children *)children;

@end
