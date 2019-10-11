//
//  main.m
//  25_Property
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "User.h"
#import "Dog.h"

//当一个类中有很多个属性的时候，那么我们需要手动的编写他们的set/get方法
//这样就比较费时，所以这时候就可以使用@property
int main(int argc, const char * argv[]) {
    
    User *user = [[User alloc] init];
    Dog *dog = [[Dog alloc] init];
    NSLog(@"count:%ld",[dog retainCount]);
    
    [user setDog:dog];
    
    NSLog(@"count:%ld",[dog retainCount]);
    
    
    return 0;
}
