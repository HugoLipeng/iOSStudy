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
            return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
        }
}
        
//        NSLog(@"hello world");
//        NSInteger s = 10;
//        BOOL a = YES;
//        BOOL b = TRUE;
//        NSString *str = @"hugo";
//        NSLog(@"%@",str);
//        NSRange rang = {1,3};
//        NSMakeRange(1,3);

        
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
//        Person *person = [[Person alloc] init];
//
//        //还有另外的一种方式创建一个对象,但是这种方式不建议使用，因为这种方式相当于把上面的两个合并
//        //有时候我们需要将上面的两个步骤进行分开操作的
//        //Person *person1 = [Person new];
//
//        //设置名字
//        [person setName:@"hugo1"];
//
//        //调用实例方法shopping
//        [person shopping:200];
//
//        Person *person1 = [[Person alloc] init];
//        [person1 setName:@"hugo2"];
//        [person1 shopping:300];
//        //同时设置两个属性的值，但是这种方式不建议使用，建议使用set方法
//        [person1 setName:@"hugo2" setAge:22];
//
//        //get方法调用
//        NSString *person_name = [person name];
//        NSLog(@"name is %@",person_name);
//        NSString *person1_name = [person1 name];
//        NSLog(@"name is %@",person1_name);
//
//        //类方法调用
//        Person *person2 = [Person newPerson];
//        [person2 setName:@"chenbiao" setAge:22];
//        [person2 shopping:400];
//
//        //空指针
//        Person *person3 = nil;
//        //不执行任何操作，但是也不会报错空指针异常
//        [person3 setName:@"空对象" setAge:22];
//
//
//
//
//
//
//        //NSString是不可变字符串，后面还会降到可变字符串
//
//        //1.--------------字符串的创建方式
//        NSString *string1 = @"hello";
//        NSLog(@"%@",string1);
//        //和上面的方式是等价的
//        string1 = [[NSString alloc] initWithString:@"hello1"];
//        NSLog(@"%@",string1);
//        //占位符，可以实现拼接字符串
//        //[string1 stringByAppendingFormat:<#(NSString *), ...#>]这个方法也是可以实现字符串拼接的
//        string1 = [[NSString alloc] initWithFormat:@"hello %@",string1];
//        NSLog(@"%@",string1);
//        //使用类方法创建字符串
//        string1 = [NSString stringWithString:@"hello1"];
//
//
//        //2.--------------字符串的比较isEqualToString
//        //比较字符串的值
//        NSString *string2 = @"abcd";
//        NSString *string3 = @"8888";
//        BOOL isEquals = [string2 isEqualToString:string3];
//        if(isEquals){
//        }else{
//        }
//
//        NSString *string8 = @"abc";
//        NSString *string9 = @"abc";
//        //这里内存做了优化，这里string8和string9是相同的,"abc"在常量区中分配的
//        //string8和string9是局部变量，在栈中分配内存的
//        if(string8 == string9){
//            NSLog(@"string8 == string9");
//        }else{
//            NSLog(@"string8 != string9");
//        }
//
//        //下面的string11和string12还是在栈中分配内存的
//        NSString *string11 = [[NSString alloc] initWithString:@"abc"];
//        NSString *string12 = [[NSString alloc] initWithString:@"abc"];
//        if(string11 == string12){
//            NSLog(@"string11 == string12");
//        }else{
//            NSLog(@"string11 != string12");
//        }
//
//        //下面的string13和string14是在堆中分配内存的，所以string13和string14不相等了
//        NSString *string13 = [[NSString alloc] initWithFormat:@"abc%@",@"def"];
//        NSString *string14 = [[NSString alloc] initWithFormat:@"abc%@",@"def"];
//        if(string13 == string14){
//            NSLog(@"string13 == string14");
//        }else{
//            NSLog(@"string13 != string14");
//        }
//
//        //3.---------------------caseInsensitiveCompare方法
//        //区分大小写判断是否相等
//        NSString *string15 = @"zhangsan";
//        NSString *string16 = @"ZAHNGSAN";
//        NSComparisonResult result = [string15 caseInsensitiveCompare:string16];
//        if(result == NSOrderedSame){
//        }else{
//        }
//
//
//        //4.---------------------compare方法
//        //比较两个字符串的大小
//        result = [string15 compare:string16];
//        if(result == NSOrderedAscending){
//            //升序
//        }else if(result == NSOrderedDescending){
//            //降序
//        }
//
//
//        //5.---------------------length方法
//        NSString *string17 = @"abc";
//        NSInteger len = [string17 length];
//        NSLog(@"len=%ld",len);
//
//
//        //6.---------------------uppercaseString/lowercaseString
//        //转成大写
//        NSString *string18 = @"aEc";
//        NSString *string19 = [string18 uppercaseString];
//        string19 = [string18 lowercaseString];
//        //首字符大写,其他的变成小写
//        [string18 capitalizedString];
//
//
//        //7.---------------------TypeXXXValue
//        //数值转化方法
//        NSString *string20 = @"3.14";
//        float value = [string20 floatValue];
//        string20 = @"1";
//        BOOL values = [string20 boolValue];
//
//
//        //8.---------------------subStringToIndex/subStringFromIndex/subStringWithRange
//        //字符串的截取
//        NSString *string21 = @"abcdefg";
//        //从开始位置截取到下标为3的字串(不包括3)
//        NSString *stringnews = [string21 substringToIndex:3];
//        //从哪个index开始截取到尾部(包括3)
//        stringnews = [string21 substringFromIndex:3];
//        //截取1~(3+1)部分的字串
//        NSRange range = {1,3};
//        stringnews = [string21 substringWithRange:range];
//
//
//        //9.----------------------stringByAppendingString/stringByAppendingFormat
//        //字符串的追加
//        NSString *string22 = @"Android";
//        NSString *stringnew = [string22 stringByAppendingString:@"IOS"];
//        stringnew = [string22 stringByAppendingFormat:@"%@",@"IOS"];
//
//
//        //10.---------------------rangeOfString
//        //字符串的查找
//        NSString *string23 = @"www.iphonetrain.com/ios.html";
//        NSRange rang = [string23 rangeOfString:@"ios"];//返回一个范围
//        if(rang.location == NSNotFound){
//            //没找到
//        }else{
//            //找到了
//        }
//
//        //11.----------------------characterAtIndex
//        //取出字符串中指定的char
//        NSString *string24 = @"abcdef";
//        unichar c = [string24 characterAtIndex:3];
//
//
//
//
//        //NSMutableString中的内容是可以修改的
//        //NSMutableString是继承NSString类的
//        //1.--------------------创建字符串
//        //和NSString的创建方法相同
//        NSMutableString *string25 = [[NSMutableString alloc] initWithString:@"hello"];
//
//        //但是不能使用以下方式创建
//        //因为以下方式创建的字符串是不可变的，其值是放到常量池中的，不可变得
//        //NSMutableString *string1 = @"hello";
//
//
//        //2.---------------------insertString
//        //在源字符串中指定的index中插入字符串，不会产生新的对象
//        [string25 insertString:@"可变" atIndex:0];
//
//
//        //3.---------------------appendString
//        //追加字符串,不会产生新的对象
//        [string25 appendString:@"可变"];
//
//
//        //4.---------------------deleteCharactersInRange
//        //删除字符串中指定范围的字串内容
//        NSMutableString *string26 = [NSMutableString stringWithString:@"hello"];
//        NSRange range1 = {1,3};
//        [string26 deleteCharactersInRange:range1];
//
//
//        //5.---------------------replaceCharactersInRange
//        //替换字符串内容
//        NSMutableString *string27 = [NSMutableString stringWithString:@"hello"];
//        NSRange ranges = [string27 rangeOfString:@"ll"];//先查找出需要替换字符串的范围
//        [string27 replaceCharactersInRange:ranges withString:@"ee"];
//
//
//
//        //NSArray中不可以存放基本数据类型，只能存放类的实例，如果需要将基本类型、结构体放入到数组中得话，
//        //需要通过NSNumber/NSValue进行数据的封装，同时不能在NSArray中存储nil
//        //1.---------------------数组的创建
//        NSString *s1 = @"zhangsan";
//        NSString *s2 = @"lisi";
//        NSString *s3 = @"wangwu";
//        //最后的nil相当于结束的标记
//        NSArray *array1 = [[NSArray alloc] initWithObjects:s1,s2,s3,nil];
//        //打印的时候会调用description方法
//        //相当于:array1.description
//        NSLog(@"%@",array1);
//
//        //使用类方法创建
//        array1 = [NSArray arrayWithObjects:s1,s2,s3, nil];
//
//        //创建一个数组，将源数组中的数据拿出来放进去
//        NSArray *array2 = [NSArray arrayWithArray:array1];
//
//
//        //2.----------------------objectAtIndex
//        //访问数组中的数据，数组中存放的是对象的指针
//        NSString *str1 = [array1 objectAtIndex:0];
//
//
//        //3.----------------------count
//        //获取数组元素中的个数
//        NSUInteger count = [array1 count];//返回的是一个无符号数值
//
//
//        //4.----------------------containsObject
//        //判断数组中是否包含某一个对象,判断的是指针对象值，不是对象中的值
//        BOOL isContains = [array1 containsObject:@"zhangsan"];
//
//
//        //5.----------------------indexOfObject
//        //返回一个对象在数组中的下标值
//        NSUInteger index = [array1 indexOfObject:@"zhangsan"];
//        if(index == NSNotFound){
//            //没有找到
//        }else{
//            //找到了
//        }
//
//
//        //6.----------------------componentsJoinedByString
//        //数组中存放的如果是字符串的话，可以使用连接符将其所有的元素进行连接
//        //注意数组中的元素必须都是字符串
//        NSString *content = [array1 componentsJoinedByString:@","];
//
//
//        //7.----------------------lastObject
//        //访问数组最后一个元素
//        NSString *lastObj = [array1 lastObject];
//
//
//        //8.----------------------arrayByAddingObject
//        //在原来的数组后面追加元素,返回一个新的数组对象，因为他是不可变的
//        NSArray *array3 = [array1 arrayByAddingObject:@"zhaoliu"];
//
//
//        //数组的遍历
//        for(int i=0;i<array1.count;i++){
//            NSString *str = [array1 objectAtIndex:i];
//            NSLog(@"%@",str);
//        }
//
//        //快速遍历
//        for(NSString *s in array1){
//            NSLog(@"%@",s);
//        }
//
//        //xcode4.4以后，编译器对数组的创建和访问语法做了优化
//        NSArray *array7 = @[s1,s2,s3];
//        NSString *s = array7[0];
//
//
//
//
//
//
//
//        //NSMutableArray继承NSArray类，有NSArray中的所有方法
//        //1.---------------------创建可变数组
//        NSString *str11 = @"zhangsan";
//        NSString *str12 = @"lisi";
//        NSString *str13 = @"wangwu";
//        NSMutableArray *mArray1 = [[NSMutableArray alloc] initWithObjects:str11,str12,str13, nil];
//        //下面的这种方式创建的数组是错误的
//        //下面的这种方式是创建不可变数组的方式，不能用于可变数组的创建
//        //NSMutableArray *array1 = @[str1,str2,str3];
//
//        //先开辟5个空间，用于存储元素，当存储的元素超过了5个，数组会自动增大空间
//        NSMutableArray *mArray2 = [[NSMutableArray alloc] initWithCapacity:5];
//        //使用类方法创建
//        NSMutableArray *mArray3 = [NSMutableArray arrayWithCapacity:5];
//
//
//        //2.---------------------addObject
//        //添加元素的方法
//        [mArray1 addObject:str11];
//        [mArray1 addObject:str12];
//        //添加数组，把mArray1中的所有元素全部添加到mArray2中
//        [mArray2 addObjectsFromArray:mArray1];
//        NSLog(@"mArray3 = %@",mArray2);
//
//        //二维数组
//        //这个是将mArray1添加到mArray2数组中，这样mArray2就变成了二维数组了
//        [mArray2 addObject:mArray1];
//        NSLog(@"mArray3 = %@",mArray2);
//
//
//        //3.---------------------insertObject
//        //在指定的位置上插入特定元素
//        [mArray2 insertObject:@"def" atIndex:0];
//
//
//        //4.---------------------replaceObjectAdIdex
//        //替换元素
//        [mArray2 replaceObjectAtIndex:0 withObject:@"aaa"];
//
//
//        //5.---------------------exchangeObjectAtIndex
//        //互换两个元素的位置
//        [mArray2 exchangeObjectAtIndex:0 withObjectAtIndex:3];
//
//
//        //6.---------------------removeObjectAdIndex
//        //删除指定位置的元素
//        [mArray2 removeObjectAtIndex:0];
//        //删除最后一个元素
//        [mArray2 removeLastObject];
//        //删除指定的对象
//        [mArray2 removeObject:@"lisi"];
//        //删除所有的对象/清空列表
//        [mArray2 removeAllObjects];
//
//
//    }
//    return 0;
