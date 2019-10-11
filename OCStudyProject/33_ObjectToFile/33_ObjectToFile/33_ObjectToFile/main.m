//
//  main.m
//  33_ObjectToFile
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//归档：将一个对象写到文件中
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //第一种形式：归档对象
       //对象----》文件
        /*
        NSArray *array = [NSArray arrayWithObjects:@"zhang",@"wangwu",@"lisi",nil];
        NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"array.src"];
        
        BOOL success = [NSKeyedArchiver archiveRootObject:array toFile:filePath];
        if(success){
            NSLog(@"保存成功");
        }
         */
        /*解归档
        NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"array.src"];
        id array = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
        NSLog(@"%@",array);
         */
        
        //第二种方式
        //第一种方式的缺陷是一个对象归档成一个文件
        //但是第二种方式，多个对象可以归档成一个文件
        /*
        NSArray *array = [NSArray arrayWithObjects:@"zhangsan",@"lisi", nil];
        NSMutableData *data = [NSMutableData data];
        NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:data];
        //编码
        [archiver encodeObject:array forKey:@"array"];
        [archiver encodeInt:100 forKey:@"scope"];
        [archiver encodeObject:@"jack" forKey:@"name"];
        
        //完成编码，将上面的归档数据填充到data中，此时data中已经存储了归档对象的数据
        [archiver finishEncoding];
        [archiver release];
        
        NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"array.src"];
        BOOL success = [data writeToFile:filePath atomically:YES];
        if(success){
            NSLog(@"归档成功");
        }
         */
        
        NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"array.src"];
        
        NSLog(@"%@",filePath);
        
        //读取归档数据
        NSData *data = [[NSData alloc] initWithContentsOfFile:filePath];
        
        //创建解归档对象，对data中的数据进行解归档
        NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:data];
        
        //解归档
        NSArray *array = [unarchiver decodeObjectForKey:@"array"];
        NSLog(@"%@",array);
        
        int value = [unarchiver decodeObjectForKey:@"scope"];
        NSLog(@"%d",value);
        
        
        

    }
    return 0;
}
