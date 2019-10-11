//
//  main.m
//  22_NSDate
//
//  Created by jiangwei on 14-10-12.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.----------------创建日期
        NSDate *date = [NSDate date];//代表当前的时间点
        NSDate *date1 = [[NSDate alloc] init];
        NSLog(@"%@",date);
        
        date1 = [NSDate dateWithTimeIntervalSinceNow:1000];//单位是秒,在当前时间加上1000s,如果是减去一个时间，直接使用负值就可以了
        NSLog(@"%@",date);
        
        //时间戳：某个日期到1970年之间的一个差值，这个值是很大的
        NSDate *date2 = [NSDate dateWithTimeIntervalSince1970:1000];//参数为时间戳的大小
        
        //创建一个日期，然后拿到时间戳
        NSDate *now = [NSDate date];
        NSTimeInterval interval = [now timeIntervalSince1970];
        interval = [now timeIntervalSinceNow];//到当前时间的一个差值
        
        //日期的比较
        //通过调用日期对象的compare，或者通过两个日期之间的差值判断
        NSComparisonResult result = [date compare:date1];
        if(result == NSOrderedAscending){
            //大于
        }else if(result == NSOrderedDescending){
            //小于
        }else{
            //等于
        }
        
        
        //日期格式化
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSString *str = [dateFormatter stringFromDate:date];
        NSLog(@"%@",str);
        
        
        //设置时区
        NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"America/New_York"];
        [dateFormatter setTimeZone:timeZone];
        
        //下面的方法是从格林时区开始添加和减去一个时区值(格林时区为0)
        //[NSTimeZone timeZoneForSecondsFromGMT:0];
        
        //通过打印可以得到具体的时区
        NSArray *array = [NSTimeZone knownTimeZoneNames];//获取所有的时区
        for(NSString *str in array){
            NSLog(@"%@",str);
        }
        
        
        //将字符串转化成日期对象
        NSString *strs = @"2013年12月14日 16:31:08";
        [dateFormatter setDateFormat:@"yyyy年MM月dd日 HH:mm:ss"];
        date1 = [dateFormatter dateFromString:strs];
        
        
    }
    return 0;
}
