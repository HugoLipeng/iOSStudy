//
//  Author.h
//  43_KeyValuePath
//
//  Created by jiangwei on 14-10-15.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Author : NSObject{
    NSString *_name;
    
    //作者出版的书,一个作者对应多个书籍对象
    NSArray *_issueBook;
}

@end
