//
//  Person.m
//  46_NSPredicate
//
//  Created by jiangwei on 14-10-18.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (id)personWithName:(NSString *)name andAge:(NSInteger)age{
    Person *person = [[Person alloc] init];
    person.name = name;
    person.age = age;
    return person;
}

- (NSString *)description{
    NSString *s =[NSString stringWithFormat:@"name=%@,age=%ld",_name,_age];
    return s;
}

@end
