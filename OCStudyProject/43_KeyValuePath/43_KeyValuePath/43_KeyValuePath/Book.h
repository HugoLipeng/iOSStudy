//
//  Book.h
//  43_KeyValuePath
//
//  Created by jiangwei on 14-10-15.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"

@interface Book : NSObject{
    Author *_author;
}

@property NSString *name;
@property float *price;

@end
