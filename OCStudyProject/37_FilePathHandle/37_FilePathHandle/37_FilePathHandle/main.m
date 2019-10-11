//
//  main.m
//  37_FilePathHandle
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //演示路径
        NSString *path = @"/Users/jiangwei/file.text";
        
        //1.返回路径的组成部分
        NSArray *array = [path pathComponents];
        NSLog(@"%@",array);
        
        //2.返回路径最后组成部分
        NSString *str = [path lastPathComponent];
        NSLog(@"%@",str);
        
        //3.在原有的路径后面追加子目录
        //这种方式有一点不好，就是需要添加/
        //演示路径
        str = [path stringByAppendingString:@"/appFile.text"];
        NSLog(@"%@",str);
        //不需要添加/
        str = [path stringByAppendingPathComponent:@"appFile.text"];
        NSLog(@"%@",str);
        
        //4.删除最后的组成部分
        str = [path stringByDeletingLastPathComponent];
        NSLog(@"%@",str);
        //删除扩展名(.text被删除了)
        str = [path stringByDeletingPathExtension];
        NSLog(@"%@",str);
        
        //5.获取扩展名
        str = [path pathExtension];
        NSLog(@"%@",str);
        
        //6.添加扩展名
        str = [path stringByAppendingPathExtension:@"jpg"];
        NSLog(@"%@",str);
        
    }
    return 0;
}
