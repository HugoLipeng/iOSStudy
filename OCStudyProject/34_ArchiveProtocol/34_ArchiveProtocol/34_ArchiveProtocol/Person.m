//
//  Person.m
//  34_ArchiveProtocol
//
//  Created by jiangwei on 14-10-13.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

//解归档的时候调用
//也是一个初始化方法
- (id)initWithCoder:(NSCoder *)aDecoder{
    NSLog(@"initWithCoder");
    self = [super init];
    if(self != nil){
        /*
        _name = [aDecoder decodeObjectForKey:@"name"];
        _age = [aDecoder decodeObjectForKey:@"age"];
        _apples = [aDecoder decodeObjectForKey:@"apples"];
         */
        //一般我们将key定义成宏，这样就不会出错
        _name = [[aDecoder decodeObjectForKey:@"name"] copy];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.apples = [aDecoder decodeObjectForKey:@"apples"];
        
    }
    return self;
}

//归档时调用此方法
- (void)encodeWithCoder:(NSCoder *)aCoder{
    NSLog(@"encodeWithCoder");
    [aCoder encodeObject:_name forKey:@"name"];//一般key和属性名是取一样的
    [aCoder encodeInteger:_age forKey:@"age"];
    [aCoder encodeObject:_apples forKey:@"apples"];
}

- (NSString *)description{
    NSString *string = [NSString stringWithFormat:@"name=%@,age=%d,apples=%@",_name,_age,_apples];
    return string;
}

@end
