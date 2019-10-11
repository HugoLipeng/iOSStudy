//
//  Person.m
//  07_DynamicDemo
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) printWithColor:(ColorPrinter *)colorPrint{
    [colorPrint print];
}

- (void) printWithBlack:(BlackPrinter *)blackPrint{
    [blackPrint print];
}

- (void) doPrint:(Printer *)printer{
    [printer print];
}

@end
