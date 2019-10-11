//
//  main.m
//  43_KeyValuePath
//
//  Created by jiangwei on 14-10-15.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
#import "Author.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //------------------KVC键值路径
        /*
        Book *book = [[Book alloc] init];
        Author *author = [[Author alloc] init];
        
        //设置作者
        [book setValue:author forKey:@"author"];
        
        //设置作者的名字
        //路径为：author.name,中间用点号进行连接
        [book setValue:@"jiangwei" forKeyPath:@"author.name"];
        NSString *name = [author valueForKey:@"name"];
        NSLog(@"name is %@",name);
         */
        
        
        //--------------------KVC的运算
        Author *author = [[Author alloc] init];
        [author setValue:@"莫言" forKeyPath:@"name"];
        
        Book *book1 = [[Book alloc] init];
        book1.name = @"红高粱";
        book1.price = 9;
        Book *book2 = [[Book alloc] init];
        book2.name = @"蛙";
        book2.price = 10;
        NSArray *array = [NSArray arrayWithObjects:book1,book2, nil];
        [author setValue:array forKeyPath:@"issueBook"];
        
        //基本数据类型会自动被包装成NSNumber，装到数组中
        //得到所有书籍的价格
        NSArray *priceArray = [author valueForKeyPath:@"issueBook.price"];
        NSLog(@"%@",priceArray);
        
        //获取数组的大小
        NSNumber *count = [author valueForKeyPath:@"issueBook.@count"];
        NSLog(@"count=%@",count);
        
        //获取书籍价格的总和
        NSNumber *sum = [author valueForKeyPath:@"issueBook.@sum.price"];
        NSLog(@"%@",sum);
        
        //获取书籍的平均值
        NSNumber *avg = [author valueForKeyPath:@"issueBook.@avg.price"];
        NSLog(@"%@",avg);
        
        //获取书籍的价格最大值和最小值
        NSNumber *max = [author valueForKeyPath:@"issueBook.@max.price"];
        NSNumber *min = [author valueForKeyPath:@"issueBook.@min.price"];
        
    }
    return 0;
}
