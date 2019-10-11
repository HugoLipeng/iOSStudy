//
//  main.m
//  34_ArchiveProtocol
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [[Person alloc] init];
        p.name = @"张三";
        p.age = 20;
        p.apples = @[@"iphone",@"ipad"];
        
        //归档
        NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"person.archiver"];
        BOOL success = [NSKeyedArchiver archiveRootObject:p toFile:filePath];
        if(success){
            NSLog(@"归档成功");
        }
        
        //解归档
        Person *person = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
        NSLog(@"%@",person);
        
        
    }
    return 0;
}
