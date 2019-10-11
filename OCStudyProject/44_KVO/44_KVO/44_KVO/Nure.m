//
//  Nure.m
//  44_KVO
//
//  Created by jiangwei on 14-10-16.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import "Nure.h"
#import "Children.h"

@implementation Nure

- (id) initWithChildren:(Children *)children{
    self = [super init];
    if(self != nil){
        _children = children;
        
        //观察小孩的hapyValue
        //使用KVO为_children对象添加一个观察者，用于观察监听hapyValue属性值是否被修改
        [_children addObserver:self forKeyPath:@"hapyValue" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:@"context"];
        
        //观察小孩的hurryValue
        [_children addObserver:self forKeyPath:@"hurryValue" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:@"context"];
    }
    return self;
}

//触发方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    NSLog(@"%@",change);
    //通过打印change，我们可以看到对应的key
    
    //通过keyPath来判断不同属性的观察者
    if([keyPath isEqualToString:@"hapyValue"]){
        //这里change中有old和new的值是因为我们在调用addObserver方法时，用到了
        //NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld；想要哪一个就用哪一个
        //[change objectForKey:@"old"]是修改前的值
        NSNumber *hapyValue = [change objectForKey:@"new"];//修改之后的最新值
        
        NSInteger *value = [hapyValue integerValue];
        
        if(value < 90){
            //do something...
        }
    }else if([keyPath isEqualToString:@"hurryValue"]){
        //这里change中有old和new的值是因为我们在调用addObserver方法时，用到了
        //NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld；想要哪一个就用哪一个
        //[change objectForKey:@"old"]是修改前的值
        NSNumber *hurryValue = [change objectForKey:@"new"];//修改之后的最新值
        
        NSInteger *value = [hurryValue integerValue];
        
        if(value < 90){
            //do something...
        }
    }
    
    NSLog(@"%@",context);//打印的就是addObserver方法的context参数
    
    
    
    //使用KVC去修改属性的值，也会触发事件
}

- (void)dealloc{
    
    //移除观察者
    [_children removeObserver:self forKeyPath:@"hapyValue"];
    [_children removeObserver:self forKeyPath:@"hurryValue"];
    
}

@end
