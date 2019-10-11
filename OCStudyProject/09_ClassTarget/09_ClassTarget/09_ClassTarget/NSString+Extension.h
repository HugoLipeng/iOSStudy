//
//  Extension.h
//  09_ClassTarget
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//定义类目的文件命名规则：类名+类目名称，如“NSString+Extension.h"
@interface NSString (Extension)

- (BOOL)validateEmail;

//覆盖NSString中的intValue方法
- (NSInteger)intValue;

@end
