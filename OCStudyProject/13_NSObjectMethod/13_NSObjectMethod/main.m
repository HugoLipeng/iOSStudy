//
//  main.m
//  13_NSObjectMethod
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

//isEqual判断两个指针是否指向同一个对象

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1.--------------------isEqual方法
        NSObject *obj1 = [[NSObject alloc] init];
        NSObject *obj2 = [[NSObject alloc] init];
        
        if([obj1 isEqual:obj2]){
            NSLog(@"obj1 == obj2");
        }else{
            NSLog(@"obj1 != obj2");
        }
        
        //或者直接用等号判断
        if(obj1 == obj2){
            //do something...
        }else{
            //do something...
        }
        
        
        //2.--------------------performSelector方法
        //调用invoke方法
        //延迟调用某一个方法
        Person *p = [[Person alloc] init];
        //[p performSelector:@selector(invoke)];
        
        //3.--------------------isKindOfClass和isMemberOfClass方法
        Person *rose = [[Person alloc] init];
        //判断rose是否属于Person类创建的
        //BOOL isBelongTo = [rose isMemberOfClass:[Person class]];//返回YES
        BOOL isBelongTo = [rose isMemberOfClass:[NSObject class]];//返回NO
        if(isBelongTo == YES){
        }else{
        }
        
        //判断rose是否属于子类创建的
        //判断一个类是不是一个类的子类
        isBelongTo = [rose isKindOfClass:[NSObject class]];//返回NO
        
        
        //4.---------------------respondsToSelector方法
        //判断类中是否有特定的方法(有实现的方法全部返回YES,如果只在.h文件中定义了，返回的是NO)
        //同时这种方式可以实现调用所谓的私有方法
        Person *task = [[Person alloc] init];
        isBelongTo = [task respondsToSelector:@selector(demo1)];
        if(isBelongTo){
            [task performSelector:@selector(demo1)];
            NSLog(@"YES");
        }else{
            NSLog(@"NO");
        }
        
    }
    return 0;
}
