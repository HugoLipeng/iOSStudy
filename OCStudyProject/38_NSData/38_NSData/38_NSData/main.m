//
//  main.m
//  38_NSData
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSData类型
//是一种存储形式
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //存储是有编码方式的，编程字节码
        //相当于Java中的解码和编码
        NSString *s = @"tsdfsdfsdfsdf";
        NSData *data = [s dataUsingEncoding:NSUTF8StringEncoding];
        s = [[NSString alloc] initWithData:data encoding:(NSUTF8StringEncoding)];
        
        //可变对象 NSMutableData 可以追加数据
    }
    return 0;
}
