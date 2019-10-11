//
//  main.m
//  17_NSMutableArray
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

//NSMutableArray继承NSArray类，有NSArray中的所有方法
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.---------------------创建可变数组
        NSString *str1 = @"zhangsan";
        NSString *str2 = @"lisi";
        NSString *str3 = @"wangwu";
        NSMutableArray *mArray1 = [[NSMutableArray alloc] initWithObjects:str1,str2,str3, nil];
        //下面的这种方式创建的数组是错误的
        //下面的这种方式是创建不可变数组的方式，不能用于可变数组的创建
        //NSMutableArray *array1 = @[str1,str2,str3];
        
        //先开辟5个空间，用于存储元素，当存储的元素超过了5个，数组会自动增大空间
        NSMutableArray *mArray2 = [[NSMutableArray alloc] initWithCapacity:5];
        //使用类方法创建
        NSMutableArray *mArray3 = [NSMutableArray arrayWithCapacity:5];
        
        
        //2.---------------------addObject
        //添加元素的方法
        [mArray1 addObject:str1];
        [mArray1 addObject:str2];
        //添加数组，把mArray1中的所有元素全部添加到mArray2中
        [mArray2 addObjectsFromArray:mArray1];
        NSLog(@"mArray3 = %@",mArray2);
        
        //二维数组
        //这个是将mArray1添加到mArray2数组中，这样mArray2就变成了二维数组了
        [mArray2 addObject:mArray1];
        NSLog(@"mArray3 = %@",mArray2);
        
        
        //3.---------------------insertObject
        //在指定的位置上插入特定元素
        [mArray2 insertObject:@"def" atIndex:0];
        
        
        //4.---------------------replaceObjectAdIdex
        //替换元素
        [mArray2 replaceObjectAtIndex:0 withObject:@"aaa"];
        
        
        //5.---------------------exchangeObjectAtIndex
        //互换两个元素的位置
        [mArray2 exchangeObjectAtIndex:0 withObjectAtIndex:3];
        
        
        //6.---------------------removeObjectAdIndex
        //删除指定位置的元素
        [mArray2 removeObjectAtIndex:0];
        //删除最后一个元素
        [mArray2 removeLastObject];
        //删除指定的对象
        [mArray2 removeObject:@"lisi"];
        //删除所有的对象/清空列表
        [mArray2 removeAllObjects];
    }
    return 0;
}
