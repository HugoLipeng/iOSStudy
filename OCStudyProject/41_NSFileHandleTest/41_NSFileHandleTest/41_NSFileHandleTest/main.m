//
//  main.m
//  41_NSFileHandleTest
//
//  Created by jiangwei on 14-10-14.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//NSFileHandle是对文件内容进行读写
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        //追加数据
        NSString *str = @"无线互联";
        NSString *homePath = NSHomeDirectory();
        NSString *filePath = [homePath stringByAppendingPathComponent:@"file.test"];
        [str writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];//写入文件
        
        NSFileHandle *handle = [NSFileHandle fileHandleForWritingAtPath:filePath];
        //默认是从开始位置写，所以我们需要将写入游标设置到尾部
        //从文件的末尾写入
        [handle seekToEndOfFile];
        NSString *s = @"123";
        NSData *data = [s dataUsingEncoding:NSUTF8StringEncoding];
        [handle writeData:data];
        //关闭文件
        [handle closeFile];
        
        
        //读取文件
        NSFileHandle *handles = [NSFileHandle fileHandleForReadingAtPath:filePath];
        
        //获取文件的大小
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSDictionary *fileAttr = [fileManager attributesOfItemAtPath:filePath error:nil];
        NSNumber *fileSize = [fileAttr objectForKey:NSFileSize];
        long long sizeValue = [fileSize longLongValue];
        
        //设置偏移量
        [handle seekToFileOffset:sizeValue/2];//将偏移量设置到中间位置
        //从当前偏移量读到文件末尾
        NSData *datas = [handle readDataToEndOfFile];
        NSString *s2 = [[NSString alloc] initWithData:datas encoding:NSUTF8StringEncoding];
        NSLog(@"%@",s2);
        
        //一个汉字占用两个字节，有时候可能会将一个汉字分成两半，有乱码的问题，需要注意
        
        
        //实现复制文件的功能
        //使用NSFileHandle只能读写已经存在的文件，不能创建文件，创建文件应该使用NSFileManager
        NSString *targetPath = [homePath stringByAppendingPathComponent:@"files.test"];
        NSFileManager *fileManagers = [NSFileManager defaultManager];
        [fileManagers createFileAtPath:targetPath contents:nil attributes:nil];
        
        //创建读取文件的handle
        NSFileHandle *readHandles = [NSFileHandle fileHandleForReadingAtPath:filePath];
        //创建写文件的handle
        NSFileHandle *writeHandles = [NSFileHandle fileHandleForWritingAtPath:targetPath];
        
        //从当前偏移量读取到文件的末尾
        NSData *datass = [readHandles readDataToEndOfFile];
        //还有一种方式读取文件,既可以读取文件，也可以读流，功能更强
        //[readHandles availableData];
        [writeHandles writeData:datass];
        
        //关闭文件
        [readHandles closeFile];
        [writeHandles closeFile];
        
        //这里有问题，就是读取文件的时候全部读取了，这样会很占内存的，所以我们应该将读取内容进行分段
        
        
        
                               
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
