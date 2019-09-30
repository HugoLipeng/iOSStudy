//
//  main.m
//  iOSStudyTest
//
//  Created by Hugo on 2019/8/26.
//  Copyright © 2019 Hugo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
//        NSLog(@"hello world");
//        NSInteger s = 10;
//        BOOL a = YES;
//        BOOL b = TRUE;
//        NSString *str = @"hugo";
//        NSLog(@"%@",str);
//        NSRange rang = {1,3};
//        NSMakeRange(1,3);
        
        //        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        
//        Person *p = [[Person alloc] init];
//        p.name = @"张三";
//        p.age = 20;
//        p.apples = @[@"iphone",@"ipad"];
//
//        //归档
//        NSString *filePath = [NSHomeDirectory() stringByAppendingPathComponent:@"person.archiver"];
//        BOOL success = [NSKeyedArchiver archiveRootObject:p toFile:filePath];
//        if(success){
//            NSLog(@"归档成功");
//        }
//
//        //解归档
//        Person *person = [NSKeyedUnarchiver unarchiveObjectWithFile:filePath];
//        NSLog(@"%@",person);
        
        
        
        //创建对象
        //在内存中申请一块内存区域
        //Person *person = [Person alloc];
        //调用初始化方法，初始化一些默认数据
        //可能上面申请的内存之前有被使用过，还会有以前的数据。所以我们需要将其数据清空，这时候就会将默认值进行赋值(相当于清空操作)
        //person = [person init];
        
        //合并
        //这里申请了两块内存：一个是对象指针变量，一个是alloc申请的
        //可以看出alloc/init方法是类方法、可以查看NSObject对象的定义
        Person *person = [[Person alloc] init];
        
        //还有另外的一种方式创建一个对象,但是这种方式不建议使用，因为这种方式相当于把上面的两个合并
        //有时候我们需要将上面的两个步骤进行分开操作的
        //Person *person1 = [Person new];
        
        //设置名字
        [person setName:@"hugo1"];
        
        //调用实例方法shopping
        [person shopping:200];
        
        Person *person1 = [[Person alloc] init];
        [person1 setName:@"hugo2"];
        [person1 shopping:300];
        //同时设置两个属性的值，但是这种方式不建议使用，建议使用set方法
        [person1 setName:@"hugo2" setAge:22];
        
        //get方法调用
        NSString *person_name = [person name];
        NSLog(@"name is %@",person_name);
        NSString *person1_name = [person1 name];
        NSLog(@"name is %@",person1_name);
        
        //类方法调用
        Person *person2 = [Person newPerson];
        [person2 setName:@"chenbiao" setAge:22];
        [person2 shopping:400];
        
        //空指针
        Person *person3 = nil;
        //不执行任何操作，但是也不会报错空指针异常
        [person3 setName:@"空对象" setAge:22];
        
        
        
        
        
        
        //NSString是不可变字符串，后面还会降到可变字符串
        
        //1.--------------字符串的创建方式
        NSString *string1 = @"hello";
        NSLog(@"%@",string1);
        //和上面的方式是等价的
        string1 = [[NSString alloc] initWithString:@"hello1"];
        NSLog(@"%@",string1);
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
        
        
        
        
        //NSMutableString中的内容是可以修改的
        //NSMutableString是继承NSString类的
        //1.--------------------创建字符串
        //和NSString的创建方法相同
        NSMutableString *string25 = [[NSMutableString alloc] initWithString:@"hello"];
        
        //但是不能使用以下方式创建
        //因为以下方式创建的字符串是不可变的，其值是放到常量池中的，不可变得
        //NSMutableString *string1 = @"hello";
        
        
        //2.---------------------insertString
        //在源字符串中指定的index中插入字符串，不会产生新的对象
        [string25 insertString:@"可变" atIndex:0];
        
        
        //3.---------------------appendString
        //追加字符串,不会产生新的对象
        [string25 appendString:@"可变"];
        
        
        //4.---------------------deleteCharactersInRange
        //删除字符串中指定范围的字串内容
        NSMutableString *string26 = [NSMutableString stringWithString:@"hello"];
        NSRange range1 = {1,3};
        [string26 deleteCharactersInRange:range1];
        
        
        //5.---------------------replaceCharactersInRange
        //替换字符串内容
        NSMutableString *string27 = [NSMutableString stringWithString:@"hello"];
        NSRange ranges = [string27 rangeOfString:@"ll"];//先查找出需要替换字符串的范围
        [string27 replaceCharactersInRange:ranges withString:@"ee"];
        
        
    }
    return 0;
}
