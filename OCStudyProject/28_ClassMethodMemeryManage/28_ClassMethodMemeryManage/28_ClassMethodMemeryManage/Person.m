//
//  Person.m
//  28_ClassMethodMemeryManage
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)dealloc{
    NSLog(@"dealloc is Executing...");
}

+ (id)personWithName:(NSString*)name{
    
    //此处的self不是指向当前对象，而是指向Person类                                                                                                
    Person *person = [[self alloc] init];//等价于[[Person alloc] init];
    person->_name = name;
    //这里不能调用[person release],因为一旦调用之后person对象就销毁了
    //交给释放池池管理
    
    //类方法创建的对象都已经加入到自动释放池
    return [person autorelease];
}

@end
