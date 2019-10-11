//
//  main.m
//  15_NSMutableString
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSMutableString中的内容是可以修改的
//NSMutableString是继承NSString类的
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //1.--------------------创建字符串
        //和NSString的创建方法相同
        NSMutableString *string1 = [[NSMutableString alloc] initWithString:@"hello"];
        
        //但是不能使用以下方式创建
        //因为以下方式创建的字符串是不可变的，其值是放到常量池中的，不可变得
        //NSMutableString *string1 = @"hello";
        
        
        //2.---------------------insertString
        //在源字符串中指定的index中插入字符串，不会产生新的对象
        [string1 insertString:@"可变" atIndex:0];
        
        
        //3.---------------------appendString
        //追加字符串,不会产生新的对象
        [string1 appendString:@"可变"];
        
        
        //4.---------------------deleteCharactersInRange
        //删除字符串中指定范围的字串内容
        NSMutableString *string2 = [NSMutableString stringWithString:@"hello"];
        NSRange range = {1,3};
        [string2 deleteCharactersInRange:range];
        
        
        //5.---------------------replaceCharactersInRange
        //替换字符串内容
        NSMutableString *string3 = [NSMutableString stringWithString:@"hello"];
        NSRange ranges = [string3 rangeOfString:@"ll"];//先查找出需要替换字符串的范围
        [string3 replaceCharactersInRange:ranges withString:@"ee"];
    }
    return 0;
}
