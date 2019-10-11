//
//  main.m
//  07_DynamicDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "BlackPrinter.h"
#import "ColorPrinter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person =[[Person alloc] init];
        
        ColorPrinter *colorPrint = [[ColorPrinter alloc] init];
        BlackPrinter *blackPrint = [[BlackPrinter alloc] init];
        
        [person printWithBlack:blackPrint];//调用黑白打印机
        [person printWithColor:colorPrint];//调用彩色打印机
        
        //多态的定义
        /*
        Printer *p1 = [[ColorPrinter alloc] init];
        Printer *p2 = [[BlackPrinter alloc] init];
        
        [person doPrint:p1];
        [person doPrint:p2];
         */
        
        //通过控制台输入的命令来控制使用哪个打印机
        int cmd;
        do{
            scanf("%d",&cmd);
            if(cmd == 1){
                [person doPrint:colorPrint];
            }else if(cmd == 2){
                [person doPrint:blackPrint];
            }
        }while (1);
        
    }
    return 0;
}
