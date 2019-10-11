//
//  main.m
//  14_NSString
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //NSString是不可变字符串，后面还会降到可变字符串
        
        //1.--------------字符串的创建方式
        NSString *string1 = @"hello";
        NSLog(@"%@",string1);
        //和上面的方式是等价的
        string1 = [[NSString alloc] initWithString:@"hello1"];
        
        //占位符，可以实现拼接字符串
        //[string1 stringByAppendingFormat:<#(NSString *), ...#>]这个方法也是可以实现字符串拼接的
        string1 = [[NSString alloc] initWithFormat:@"hello %@",string1];
        NSLog(@"%@",string1);
        //使用类方法创建字符串
        string1 = [NSString stringWithString:@"hello1"];
        
        
        //2.--------------字符串的比较isEqualToString
        //比较字符串的值
        NSString *string2 = @"abcd";
        NSString *string3 = @"8888";
        BOOL isEquals = [string2 isEqualToString:string3];
        if(isEquals){
        }else{
        }
        
        NSString *string8 = @"abc";
        NSString *string9 = @"abc";
        //这里内存做了优化，这里string8和string9是相同的,"abc"在常量区中分配的
        //string8和string9是局部变量，在栈中分配内存的
        if(string8 == string9){
            NSLog(@"string8 == string9");
        }else{
            NSLog(@"string8 != string9");
        }
        
        //下面的string11和string12还是在栈中分配内存的
        NSString *string11 = [[NSString alloc] initWithString:@"abc"];
        NSString *string12 = [[NSString alloc] initWithString:@"abc"];
        if(string11 == string12){
            NSLog(@"string11 == string12");
        }else{
            NSLog(@"string11 != string12");
        }
        
        //下面的string13和string14是在堆中分配内存的，所以string13和string14不相等了
        NSString *string13 = [[NSString alloc] initWithFormat:@"abc%@",@"def"];
        NSString *string14 = [[NSString alloc] initWithFormat:@"abc%@",@"def"];
        if(string13 == string14){
            NSLog(@"string13 == string14");
        }else{
            NSLog(@"string13 != string14");
        }
        
        //3.---------------------caseInsensitiveCompare方法
        //区分大小写判断是否相等
        NSString *string15 = @"zhangsan";
        NSString *string16 = @"ZAHNGSAN";
        NSComparisonResult result = [string15 caseInsensitiveCompare:string16];
        if(result == NSOrderedSame){
        }else{
        }
        
        
        //4.---------------------compare方法
        //比较两个字符串的大小
        result = [string15 compare:string16];
        if(result == NSOrderedAscending){
            //升序
        }else if(result == NSOrderedDescending){
            //降序
        }
        
        
        //5.---------------------length方法
        NSString *string17 = @"abc";
        NSInteger len = [string17 length];
        NSLog(@"len=%ld",len);
        
        
        //6.---------------------uppercaseString/lowercaseString
        //转成大写
        NSString *string18 = @"aEc";
        NSString *string19 = [string18 uppercaseString];
        string19 = [string18 lowercaseString];
        //首字符大写,其他的变成小写
        [string18 capitalizedString];
        
        
        //7.---------------------TypeXXXValue
        //数值转化方法
        NSString *string20 = @"3.14";
        float value = [string20 floatValue];
        string20 = @"1";
        BOOL values = [string20 boolValue];
        
        
        //8.---------------------subStringToIndex/subStringFromIndex/subStringWithRange
        //字符串的截取
        NSString *string21 = @"abcdefg";
        //从开始位置截取到下标为3的字串(不包括3)
        NSString *stringnews = [string21 substringToIndex:3];
        //从哪个index开始截取到尾部(包括3)
        stringnews = [string21 substringFromIndex:3];
        //截取1~(3+1)部分的字串
        NSRange range = {1,3};
        stringnews = [string21 substringWithRange:range];
        
        
        //9.----------------------stringByAppendingString/stringByAppendingFormat
        //字符串的追加
        NSString *string22 = @"Android";
        NSString *stringnew = [string22 stringByAppendingString:@"IOS"];
        stringnew = [string22 stringByAppendingFormat:@"%@",@"IOS"];
        
        
        //10.---------------------rangeOfString
        //字符串的查找
        NSString *string23 = @"www.iphonetrain.com/ios.html";
        NSRange rang = [string23 rangeOfString:@"ios"];//返回一个范围
        if(rang.location == NSNotFound){
            //没找到
        }else{
            //找到了
        }
        
        //11.----------------------characterAtIndex
        //取出字符串中指定的char
        NSString *string24 = @"abcdef";
        unichar c = [string24 characterAtIndex:3];
    
        
    }
    return 0;
}
