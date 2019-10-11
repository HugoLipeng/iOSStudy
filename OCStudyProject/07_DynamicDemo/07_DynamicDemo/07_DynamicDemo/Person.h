//
//  Person.h
//  07_DynamicDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ColorPrinter.h"
#import "BlackPrinter.h"

//扩展性不高，当我们需要添加一个新的打印机的时候还要定义对应的一个方法
//所以这时候就可以使用多态技术了

@interface Person : NSObject{
    NSString *_name;
}

- (void) printWithColor:(ColorPrinter *)colorPrint;

- (void) printWithBlack:(BlackPrinter *)blackPrint;

- (void) doPrint:(Printer *)printer;

@end
