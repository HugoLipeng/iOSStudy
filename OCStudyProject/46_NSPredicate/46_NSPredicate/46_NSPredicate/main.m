//
//  main.m
//  46_NSPredicate
//
//  Created by jiangwei on 14-10-18.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

//谓词，指定过滤器的条件，将符合条件的对象保留下来
//一般用谓词过滤数组中指定的元素
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSArray *persons = [NSArray arrayWithObjects:
                            [Person personWithName:@"mac" andAge:20],
                            [Person personWithName:@"1" andAge:30],
                            [Person personWithName:@"2" andAge:40],
                            [Person personWithName:@"3" andAge:50],
                            [Person personWithName:@"4" andAge:60],
                            [Person personWithName:@"5" andAge:70],
                            [Person personWithName:@"6" andAge:20],
                            [Person personWithName:@"7" andAge:40],
                            [Person personWithName:@"8" andAge:60],
                            [Person personWithName:@"9" andAge:40],
                            [Person personWithName:@"0" andAge:80],
                            [Person personWithName:@"10" andAge:90],
                            [Person personWithName:@"1" andAge:20]];
        
        //年龄小于30
        //定义谓词对象，谓词对象中包含了过滤条件
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"age<%d",30];
        //使用谓词条件过滤数组中的元素，过滤之后返回查询的结果
        NSArray *array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"filterArray=%@",array);
        
        //查询name=1的并且age大于40
        predicate = [NSPredicate predicateWithFormat:@"name='1' && age>40"];
        array = [persons filteredArrayUsingPredicate:predicate];
        NSLog(@"filterArray=%@",array);
        
        //in(包含)
        predicate = [NSPredicate predicateWithFormat:@"self.name IN {'1','2','4'} || self.age IN{30,40}"];
        
        //name以a开头的
        predicate = [NSPredicate predicateWithFormat:@"name BEGINSWITH 'a'"];
        //name以ba结尾的
        predicate = [NSPredicate predicateWithFormat:@"name ENDSWITH 'ba'"];
        
        //name中包含字符a的
        predicate = [NSPredicate predicateWithFormat:@"name CONTAINS 'a'"];
        
        //like 匹配任意多个字符
        //name中只要有s字符就满足条件
        predicate = [NSPredicate predicateWithFormat:@"name like '*s*'"];
        //?代表一个字符，下面的查询条件是：name中第二个字符是s的
        predicate = [NSPredicate predicateWithFormat:@"name like '?s'"];
        
        
        
    }
    return 0;
}
