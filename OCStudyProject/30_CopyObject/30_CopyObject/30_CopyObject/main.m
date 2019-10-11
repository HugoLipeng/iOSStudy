//
//  main.m
//  30_CopyObject
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //对象具备拷贝功能，必须实现如下协议
        //<NSCopying>、<NSMutableCopying>
        
        //copy方法返回的是一个不可变对象，mutableCopy方法返回的是一个可变对象
        
        /*
        NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@"one",@"two",nil];
        NSMutableArray *array2 = [array1 retain];
        //retain只是引用计数+1，没有创建新的对象
        //array1与array2指针相同，指向同一个对象
        if(array1 == array2){
            NSLog(@"array1 == array2");
            NSLog(@"array1的引用计数:%ld",array1.retainCount);
        }
         */
        
        NSMutableArray *array1 = [NSMutableArray arrayWithObjects:@"one",@"two",nil];
        //复制对象，创建一个新的副本对象
        //这里使用copy方法复制，返回的是一个不可变数组，但是用一个可变数组来声明，但是我们关心的是指针的的内容，而不是类型
        //所以array2的真实类型还是不可变类型的
        NSMutableArray *array2 = [array1 copy];//array2计数为:1,因为是新创建出来的对象
        
        //使用mutableCopy方法，返回的就是可变数组
        //当然这种方法只针对于那些有可变对象之分有用，对于其他的对象这个方法和copy方法的效果是一样的
        NSMutableArray *array3 = [array1 mutableCopy];
        
        if(array1 != array2){
            NSLog(@"array1 != array2");
            NSLog(@"array1的引用计数:%ld",array1.retainCount);
            NSLog(@"array2的引用计数:%ld",array2.retainCount);
        }
        [array2 release];
        [array1 release];
        
        
    }
    return 0;
}
