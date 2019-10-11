//
//  main.m
//  40_NSFileHandle
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//写文件，我们之前使用各种数据结构来存储数据：NSString,NSData,NSDictionary,NSArray等，他们都是有一个writeToFile方法用来写文件的

//纯文本：没有任何格式的数据
//非纯文本：有修饰的数据(字体大小，字体颜色等)

//数组只能将如下类型写入文件，如果包含其他对象，将写入失败：NSNumber,NSString,NSData,NSDate,NSArray,NSDictionary
//数组、字典写入的文件叫做属性文件，可以使用xcode进行编辑
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        //1.-------------------字符串读写文件
        NSString *str = @"无线互联";
        NSString *homePath = NSHomeDirectory();
        NSString *filePath = [homePath stringByAppendingPathComponent:@"Documents/file.text"];
        //现在有这样的场景，第一次把字符串写入到文件中，当我们修改字符串之后，再次写入的时候，但是可能会写入失败
        //但是之前的内容也有可能丢失，因为每次在写入新的内容的时候，会剪切之前的内容，所以这里就有可能新的没有写
        //成功，旧的文件也丢失了
        //所以这时候atomically参数：
        //YES:会将新内容先写入到一个缓存文件中，如果写入缓存成功之后，这时候就将这个缓存文件替换旧文件，这样就很安全了
        BOOL sucess = [str writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
        if(sucess){
            //写入成功
        }else{
            //写入失败
        }
        //读取文件内容到字符串中
        //类方法
        NSString *str1 = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        //构造方法
        //str1 = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@",str1);
        
        
        //2.--------------------NSData读写
        //创建NSData的同时读取文件中的内容
        NSData *data = [[NSData alloc] initWithContentsOfFile:filePath];
        //NSData转化成NSString
        NSString *s = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",s);
        
        //写文件
        BOOL sucess1 = [data writeToFile:filePath atomically:YES];
        if(sucess1){
            //写入成功
        }else{
            //写入失败
        }
        
        
        //3.--------------------NSArray读写文件
        NSArray *array = @[@"zhangsan",@"lisi"];
        //属性文件一般后缀名为.plist
        NSString *filePaths = [homePath stringByAppendingPathComponent:@"Documents/array.plist"];
        BOOL sucess2 = [array writeToFile:filePaths atomically:YES];
        if(sucess2){
            //写入成功
        }else{
            //写入失败
        }
        //读文件
        NSArray *arrays = [[NSArray alloc] initWithContentsOfFile:filePath];
        NSLog(@"%@",arrays);
        
        
        //4.---------------------NSDictionary读写文件
        NSDictionary *dic = @{@"zhang":@"zhangsan",@"li":@"lisi"};
        BOOL sucess3 = [dic writeToFile:filePath atomically:YES];
        if(sucess3){
            //写入成功
        }else{
            //写入失败
        }
        
        //读文件
        dic = [[NSDictionary alloc] initWithContentsOfFile:filePath];
        NSLog(@"%@",dic);
        
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
