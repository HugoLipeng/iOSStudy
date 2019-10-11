//
//  main.m
//  39_NSFileManager
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//NSFileManager:对文件进行操作的，包括复制，粘贴，删除，剪切等操作
int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        //------------------创建文件/文件夹
        //获取沙盒目录
        NSString *homePath = NSHomeDirectory();
        //在沙盒目录中创建一个文件file.text
        NSString *filePath = [homePath stringByAppendingPathComponent:@"Documents/file.text"];
        //NSFileManager是单利模式,所以不能使用alloc+init创建
        NSFileManager *manager = [NSFileManager defaultManager];
        NSString *str = @"无线互联";
        NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
        //参数：文件路径、文件内容、文件的属性
        BOOL sucess = [manager createFileAtPath:filePath contents:data attributes:nil];
        if(sucess){
            NSLog(@"文件创建成功");
        }else{
            NSLog(@"文件创建失败");
        }
        
        //创建文件夹
        NSString *filePaths = [homePath stringByAppendingPathComponent:@"Documents/file"];
        NSError *error;
        //需要传递一个创建失败的指针对象，记录创建失败的信息
        BOOL success1 = [manager createDirectoryAtPath:filePaths withIntermediateDirectories:YES attributes:nil error:&error];
        if(!success1){
            NSLog(@"创建成功");
        }else{
            NSLog(@"创建失败");
        }
        
        
        //--------------------读取文件
        //根据路径读取文件内容
        NSData *datas = [manager contentsAtPath:filePath];
        NSString *s = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",s);
        
        
        //--------------------移动文件/剪切文件
        //NSFileManager中没有提供重命名的方法，所以我们可以借助移动的api进行操作
        //把filePath移动到targetPath目录中
        NSString *targetPath = [homePath stringByAppendingPathComponent:@"Documents/file/file2.text"];
        BOOL sucess2 = [manager moveItemAtPath:filePath toPath:targetPath error:nil];
        if(sucess2) {
            NSLog(@"移动成功");
        }else{
            NSLog(@"移动失败");
        }
        
        
        //--------------------复制文件
        BOOL sucess3 = [manager copyItemAtPath:filePath toPath:targetPath error:nil];
        if(sucess3){
            //复制成功
        }else{
            //复制失败
        }
        
        
        //--------------------删除文件
        //删除之前需要判断这个文件是否存在
        BOOL isExist = [manager fileExistsAtPath:filePath];//判断文件是否存在
        if(isExist){
            BOOL sucess4 = [manager removeItemAtPath:filePath error:nil];
            if(sucess4){
                //删除成功
            }else{
                //删除失败
            }
        }
        
        
        //--------------------获取文件的属性
        NSDictionary *dic = [manager attributesOfItemAtPath:filePath error:nil];
        NSLog(@"%@",dic);//通过打印我们就可以查看文件属性的一些key
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
