//  Person.h
//  02_ClassDemo
//
//  Created by jiangwei on 14-10-10.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject{
    //在{}中定义属性(全局变量/实例变量)
    //注意：只能定义不能赋值,因为这里只是在做声明操作，不能赋值的
    //加上下划线，为了区分局部变量
    NSString *_name;//姓名，默认值是nil:空指针，可以查看定义:#define nil NULL
    NSInteger _age;//年龄，默认值是0
}

//定义方法
//-：实例方法,+：类方法
//格式：方法说明 (返回类型) 方法名 : (参数类型)参数名称
//注意方法名是shopping:,不是shopping，这个要注意
- (void)shopping:(float)price;

//定义方法设置属性值(注意setXXX)
- (void)setName:(NSString *)name;
- (void)setAge:(NSInteger)age;

//定义方法的获取属性值(注意不是getXXX,而是直接的属性名，因为getXXX在OC中还有其他用途)
- (NSString *)name;
- (NSInteger)age;

//多个参数的方法定义
//方法名两部分组成的：setName: setAge:
- (void)setName:(NSString *)name setAge:(NSInteger)age;
//或者方法名：setName: :,后面的可以省略，但是这种方式不建议使用
//- (void)setName:(NSString *)name :(NSInteger)age;

//类方法
//在这个方法中是无法访问属性的，因为属性是属于对象的，不是类的
+ (Person *)newPerson;
@end
