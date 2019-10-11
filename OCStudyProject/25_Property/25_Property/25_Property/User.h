//
//  Person.h
//  25_Property
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface User : NSObject{
    //NSString *_userName;
    //NSString *_passWord;
    //...
}

//第一步生成_userName属性
//第二步为_userName属性自动生成set/get方法

//property在生成的set方法中，有没有做引用的操作？
//set方法的三种方式:
//第一种方式：
//普通赋值
//一般对象类型的引用操作
//NSString对象类型的引用操作

//第一个位置
//atomic:线程保护的，默认
//nonatomic:线程不保护的

//第二个位置
//assign:直接赋值，默认
//retain:保留对象
//copy:拷贝对象

//第三个位置
//readwrite:生成get/set方法，默认
//readonly:只生成get方法
@property(atomic,retain,readwrite) NSString *userName;
@property(atomic,retain,readwrite) Dog *dog;

@end
