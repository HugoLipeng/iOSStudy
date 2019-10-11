//
//  main.m
//  08_@class
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Classes.h"
#import "Student.h"

//Classes和Student相互导入会出现问题
//这时候我们就可以使用@class解决这样的问题
//我们一般在.h文件中使用@class,因为在.h文件中一般是不会使用类的属性和方法的
//在.m文件中可以导入.h文件
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Classes *cls =[[Classes alloc] init];
        Student *stu = [[Student alloc] init];
        cls->_student = stu;
        [cls t1];
        
    }
    return 0;
}
