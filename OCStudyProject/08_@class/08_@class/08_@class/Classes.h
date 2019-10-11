//
//  Classes.h
//  08_@class
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "Student.h"

//不会将Student.h拷贝过来，只是告诉编译器Student这个类在别的地方中有定义，这样就不知道这个类中任何信息(哪些属性和方法)
@class Student;

@interface Classes : NSObject{
    
@public
    Student *_student;
}

- (void)t1;

@end
