//
//  AdressBook.h
//  35_Singleton
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//设计单利类的目的，限制这个类只能创建一个对象

//构造方法为私有的
//保存一个全局的static变量
@interface AdressBook : NSObject

+ (AdressBook *)shareInstance;

@end
