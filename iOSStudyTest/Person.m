//
//  Person.m
//  iOSStudyTest
//
//  Created by Hugo on 2019/9/29.
//  Copyright © 2019 Hugo. All rights reserved.
//

#import "Person.h"

@implementation Person
//
//- (id)initWithCoder:(NSCoder *)aDecoder{
//    NSLog(@"initWithCoder");
//    self = [super init];
//    if(self != nil){
//        _name = [[aDecoder decodeObjectForKey:@"name"] copy];
//        self.age = [aDecoder decodeObjectForKey:@"age"];
//        self.apples = [aDecoder decodeObjectForKey:@"apples"];
//    }
//    return self;
//}
//
//
////归档时调用此方法
//- (void)encodeWithCoder:(NSCoder *)aCoder{
//    NSLog(@"encodeWithCoder");
//    [aCoder encodeObject:_name forKey:@"name"];//一般key和属性名是取一样的
//    [aCoder encodeInteger:_age forKey:@"age"];
//    [aCoder encodeObject:_apples forKey:@"apples"];
//}
//
//- (NSString *)description{
//    NSString *string = [NSString stringWithFormat:@"name=%@,age=%d,apples=%@",_name,_age,_apples];
//    return string;
//}



//实现方法
- (void) shopping : (float)price{
    NSLog(@"%@ shopping %f",_name,price);
}

- (void)setName:(NSString *)name{
    _name = name;
}
- (void)setAge:(NSInteger)age{
    _age = age;
}
- (NSString *)name{
    return _name;
}
- (NSInteger)age{
    return _age;
}
- (void)setName:(NSString *)name setAge:(NSInteger)age{
    _name = name;
    _age = age;
}
+ (Person *)newPerson{
    return [[Person alloc] init];
}


@end
