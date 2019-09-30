//
//  Person.h
//  iOSStudyTest
//
//  Created by Hugo on 2019/9/29.
//  Copyright © 2019 Hugo. All rights reserved.
//

#import <Foundation/Foundation.h>

//@interface Person : NSObject<NSCoding>
//
//@property(nonatomic,copy)NSString *name;
//@property(nonatomic,assign)NSInteger age;
//@property(nonatomic,retain)NSArray *apples;
//
//- (NSString *)description;


@interface Person : NSObject{
    NSString *_name;
    NSInteger _age;
}


//注意方法名是shopping:,不是shopping，这个要注意
- (void)shopping:(float)price;

- (void)setName:(NSString *)name;

- (NSString *)name;
- (NSInteger)age;

- (void)setName:(NSString *)name setAge:(NSInteger)age;

+ (Person *)newPerson;

@end

