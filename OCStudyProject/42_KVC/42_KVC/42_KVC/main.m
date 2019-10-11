//
//  main.m
//  42_KVC
//
//  Created by jiangwei on 14-10-14.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

//KVC：很暴力，及时一个类的属性是私有的，而且也没有get/set方法，同样可以读写
//相当于Java中的反射，破坏类的封装性
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [[Person alloc] init];
        
        //设置值
        //这里setValue方法：第一个参数是value,第二个参数是key(就是类的属性名称)
        [p setValue:@"jiangwei" forKey:@"name"];
        
        Dog *dog = [[Dog alloc] init];
        [p setValue:dog forKey:@"dog"];
        
        //KVC设置值时，如果属性有set方法，则优先调用set方法，如果没有则直接设置上去，get方法类似
        
        //读取值
        NSString *name = [p valueForKey:@"name"];
        
        //设置基本数据类型
        //这里需要将基本类型转化成NSNumber
        //在设置值的时候，会有自动解包的过程，NSNumber会解包赋值给age
        [p setValue:@22 forKey:@"age"];
        
        NSLog(@"%@",p);
        
        return 0;
    }
    return 0;
}
