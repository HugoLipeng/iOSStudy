//
//  main.m
//  35_Singleton
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AdressBook.h"

//单利模式
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        AdressBook *book1 = [AdressBook shareInstance];
        AdressBook *book2 = [AdressBook shareInstance];
        
        NSLog(@"%@",book1);
        NSLog(@"%@",book2);
        
    }
    return 0;
}
