//
//  Children.h
//  12_DesignStyle
//
//  Created by jiangwei on 14-10-11.
//  Copyright (c) 2014年 jiangwei. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Children;//如果没有这行代码的话，协议ChildrenDelegate中得Children类型就会查找不到，报错

@protocol ChildrenDelegate <NSObject>

@required
- (void)wash:(Children *)children;
- (void)play:(Children *)children;

@end

@interface Children : NSObject{
    
    //Nure *_nure;//保姆
    //这里可以使用多态技术实现，因为保姆，护士有共同的父类NSObject,但是这里不使用这种方式，而是使用id类型
    //但是我们还需要为这个类型添加一些方法，这里就用到了协议
    //这个代理对象必须遵从ChildrenDelegate协议
    id<ChildrenDelegate> _delegate;//这个变量就是小孩的代理对象
    NSInteger timeValue;
}

-(void)setDelegate:(id)delegate;

@end
