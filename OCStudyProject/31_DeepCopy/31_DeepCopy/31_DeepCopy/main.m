//
//  main.m
//  31_DeepCopy
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//深拷贝和浅拷贝
//默认是浅拷贝
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *array1 = [NSMutableArray arrayWithCapacity:2];
        
        for(int i=0;i<2;i++){
            Person *p = [[Person alloc] init];
            [array1 addObject:p];
            [p release];
        }
        
        //引用计数都是1
        for(Person *p in array1){
            NSLog(@"复制之前的引用计数:%ld",p.retainCount);
            NSLog(@"复制之前的指针:%p",p);
        }
        
        //引用计数都是2，因为是浅拷贝，又有指针指向对象了，array2也是使用了person
        //浅拷贝：只拷贝对象指针
        //深拷贝：复制属性
        NSArray *array2 = [array1 copy];
        for(Person *p in array2){
            NSLog(@"复制之前的引用计数:%ld",p.retainCount);
            NSLog(@"复制之前的指针:%p",p);
        }
        
        //这里Person中有一个属性是NSMutableArray，但是我们只是赋值，并不是拷贝
        //所以这里还不算是深拷贝
        Person *p = [[Person alloc] init];
        p.apples = [NSMutableArray arrayWithObjects:@"iphone",@"ipad", nil];
        p.age = 20;
        
        Person *p1 = [p copy];
        
        if(p != p1){
            NSLog(@"p1.age=%d",p1.age);
            NSLog(@"p1.apples=%@",p1.apples);
        }
        
    }
    return 0;
}
