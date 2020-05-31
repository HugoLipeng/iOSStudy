# iOSStudyTest
[iOS官方开发手册](https://developer.apple.com/documentation/)

官方代码示例都很规范，分类也很清晰，内容也更全。从大块上，可以分为 App Frameworks、图形、App 服务、媒体、开发工具、系统等。

- App Frameworks 里面主要是 Fundation 框架、UIKit、AppKit 这类文档资料。
- 图形分类里包含了 UIkit 更底层的 Core Graphics、Core Image、Core Animation，还有 ARKit、Metal、GameKit、SpriteKit 等也在这里面。
- App 服务里是苹果公司为开发者提供的服务套件，比如推送套件 PushKit、富文本套件 Core Text、方便集成机器学习模型到你 App 的 Core ML、车载应用的 CarPlay 等。JavaScript 引擎 JavaScriptCore 在 iOS 中应用接口的资料，你也可以在这个分类里找到。
- 媒体里主要包含了 AVFundation、Core Audio Kit、Core Media 这些音视频的内容。
- 开发工具里有 Swift Playgrounds、XcodeKit、XCTest。
- 系统这个分类里的内容非常多而且实用，有网络基础 CFNetwork 和 Network、多核队列相关的 Dispatch、内核框架 Kernel、运行时库 Objective-C Runtime、安全 Security。



## OC学习路径（博客作者注销账号了，悲从中来）

https://blog.csdn.net/jiangwei0910410003/article/category/2745191 系列

[源码](https://github.com/HugoLipeng/iOSStudyTest/tree/master/OCStudyProject)



#### [OC学习篇之---总结和学习目录](https://blog.csdn.net/jiangwei0910410003/article/details/41928347)

1，[OC学习篇之---第一个程序HelloWorld](https://blog.csdn.net/jiangwei0910410003/article/details/41578003)

2，[OC学习篇之---类的定义](https://blog.csdn.net/jiangwei0910410003/article/details/41657603)

3，[OC学习篇之---类的初始化方法和点语法的使用](https://blog.csdn.net/jiangwei0910410003/article/details/41683873)

```
//调用父类的初始化方法
self = [super init];
if(self != nil){
    _name = name;
    _age = age;
}  
return self;
```

4，[OC学习篇之---类的三大特性(封装，继承，多态)](https://blog.csdn.net/jiangwei0910410003/article/details/41707161)

> OC中也是有四种访问权限修饰符：
> @public、@protected、@private、@package
>
> 其中默认的修饰符是@private
>
> 但是这里要注意的是：OC中的方法是没有修饰符的概念的，这个和Java有很大的区别，一般都是公开访问的，即public的，但是我们怎么做到让OC中的一个方法不能被外界访问呢？
>
> OC中是这么做的，如果想让一个方法不被外界访问的话，只需要在.m文件中实现这个方法，不要在头文件中进行定义，说白了就是：该方法有实现，没定义，这样外界在导入头文件的时候，是没有这个方法的，但是这个方法我们可以在自己的.m文件中进行使用。

5，[OC学习篇之---@class关键字的作用以及#include和#import的区别](https://blog.csdn.net/jiangwei0910410003/article/details/41774747)

6，[OC学习篇之---类目的概念和使用](https://blog.csdn.net/jiangwei0910410003/article/details/41775329)

7，[OC学习篇之---类的延展](https://blog.csdn.net/jiangwei0910410003/article/details/41775603)

8，[OC学习篇之---协议的概念和用法](https://blog.csdn.net/jiangwei0910410003/article/details/41776015)

9，[OC学习篇之---代理模式](https://blog.csdn.net/jiangwei0910410003/article/details/41777627)

OC中的代理模式核心技术是：**id类型+协议+多态**

10，[OC学习篇之---Foundation框架中的NSObject对象](https://blog.csdn.net/jiangwei0910410003/article/details/41788121)

```
 		//延迟调用一个方法
    //此处的延迟调用，代码不会停留在此处，为了不阻塞线程
    [self performSelector:@selector(demo1) withObject:NULL afterDelay:2.5];
    
    //如果没有以下代码的话，上面的延迟调用就不会有效果的，因为他不会阻塞当前线程，所以当前线程中后续的代码会继续执行
    //在main.m中得main方法中，会直接return，这样程序就运行结束了，所以来不及执行2.5s之后方法执行
    //以下代码让执行过程停在此处
    [[NSRunLoop currentRunLoop] run];

```

11，[OC学习篇之---Foundation框架中的NSString对象和NSMutableString对象](https://blog.csdn.net/jiangwei0910410003/article/details/41788223)

> 在OC中NSString对象是不可变的，和Java中的String一样的，而NSMutableString是可变的，和Java中的StringBuilder一样。
>
> 用initWithString初始化方法创建的字符串他们的指针变量也是指向同一个对象的，所以这里要记住了，NSString类中的initWithString方法创建的字符串和NSString *str = @"demo"直接创建的方式是一样的，都是指向常量池中的一个对象。所以使用==判断是相等的，其他的NSString类中创建字符串的方法就不一样了，用initWithFormat初始化方法创建出来的对象是在堆中分配内存的，就不相等了。

12，[OC学习篇之---Foundation框架中的NSArray类和NSMutableArray类](https://blog.csdn.net/jiangwei0910410003/article/details/41809719)



13，[OC学习篇之---Foundation框架中的NSDirctionary类以及NSMutableDirctionary类](https://blog.csdn.net/jiangwei0910410003/article/details/41830179)

> Foundation框架中的NSDirctionary类，NSMutableDirctionary类，这个和Java中的Map类很想，OC中叫字典，Java中叫Map，还有字典是无序的，这个和NSArray不一样，Java中的Map也是无序的，通过hash值去检索元素的。

14，[OC学习篇之---Foundation框架中的其他类(NSNumber,NSDate,NSExcetion)](https://blog.csdn.net/jiangwei0910410003/article/details/41852835)

```
				//捕获异常
        @try {
            int a = 1/0;
        }
        @catch (NSException *exception) {
            
        }
        @finally {
            
        }
```

15，[OC学习篇之---归档和解挡](https://blog.csdn.net/jiangwei0910410003/article/details/41872551)



16，[OC学习篇之---文件的操作](https://blog.csdn.net/jiangwei0910410003/article/details/41875015)

> 在IOS中，每个应用程序都是一个沙盒，他们有自己的文件目录，这个目录对其他程序是不可见的，和Android中的/data/data/包名/中的内容差不多，当然IOS中的沙盒目录有三种：
>
> Documents：存放长期使用的文件(一般存放目录)
>
> Library：系统存放文件
>
> tmp：临时文件，app重启时，该目录下得文件清空

```
				//获取沙盒目录
        //默认有三个文件夹
        //Documents：存放长期使用的文件(一般存放目录)
        //Library：系统存放文件
        //tmp：临时文件，app重启时，该目录下得文件清空
        
        //第一种获取方式，我们得到Home目录之后，手动的去拼接Document/Library
        NSString *homePath = NSHomeDirectory();
        NSLog(@"沙盒目录:%@",homePath);
        
        //第二种方式，直接使用Api获取
        //NSDocumentDirectory:Documents文件夹
        //NSLibraryDirectory:Library文件夹
        NSArray *array = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSLog(@"%@",array);
        
        NSArray *array1 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
        NSLog(@"%@",array1);
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
```

17，[OC学习篇之---KVC和KVO操作](https://blog.csdn.net/jiangwei0910410003/article/details/41912937)

> KVC操作就和Java中使用反射机制去访问类的private权限的变量一样；
>
> KVO操作的作用就是用来监听类中属性值的变化，实现原理是观察者模式，当然我们也可以使用观察者模式在Java中实现这样的机制
>
> 
>
> KVC：就是可以暴力的去get/set类的私有属性，同时还有强大的键值路径对数组类型的属性进行操作
>
> KVO：监听类中属性值变化的



18，[OC学习篇之---通知(NSNotificationCenter)](https://blog.csdn.net/jiangwei0910410003/article/details/41923401)



19，[OC学习篇之---谓词(NSPredicate)](https://blog.csdn.net/jiangwei0910410003/article/details/41923507)

> OC中的谓词操作是针对于数组类型的，他就好比数据库中的查询操作，数据源就是数组，这样的好处是我们不需要编写很多代码就可以去操作数组，同时也起到过滤的作用，我们可以编写简单的谓词语句，就可以从数组中过滤出我们想要的数据。非常方便。在Java中是没有这种技术的，但是有开源的框架已经实现了此功能。

20，[OC学习篇之---内存管理介绍和使用](https://blog.csdn.net/jiangwei0910410003/article/details/41924683)



21，[OC学习篇之---@property和@synthesize的使用](https://blog.csdn.net/jiangwei0910410003/article/details/41925967)

> 我们之前定义属性的时候，在{...}中进行定义，而且定义完之后还有可能需要实现get/set方法，这里我们直接使用@property关键字进行定义：@property NSString *userName;
> 这样定义完之后，我们就可以使用这个属性了：
> 这样定义的方式之后，这个属性就会自动有set/get方法了
>
> 我们使用@property定义属性之后，如果我们想修改这个属性的名称，就可以使用@synthesize关键字来对属性名称进行修改 @synthesize userName = $userName;

22，[OC学习篇之---数组对象的引用计数问题和自动释放池的概念](https://blog.csdn.net/jiangwei0910410003/article/details/41926183)



23，[OC学习篇之---循环引用问题](https://blog.csdn.net/jiangwei0910410003/article/details/41926369)



24，[OC学习篇之---对象的拷贝](https://blog.csdn.net/jiangwei0910410003/article/details/41926531)

> 为什么要由对象的拷贝这么一个概念呢？看一个场景：假如现在一个对象中有一个数组对象，现在我们生成一个对象，同时将这个对象赋值给另外一个对象，那么现在问题是这两个对象中的数组对象是同一个，那么如果一个对象中去修改这个数值中的内容，另外一个对象中的数组内容也会被修改，相当于这个数组对象是共享的，当然我们有时候是不希望这种形式的出现的，这时候我们就出现了对象的拷贝。
>
> 
>
> 浅拷贝：只拷贝所有属性对象的指针
>
> 深拷贝：拷贝属性对象的内容

25，[OC学习篇之---单例模式](https://blog.csdn.net/jiangwei0910410003/article/details/41928053)

> 实现单例模式有三个条件
>
> 1、类的构造方法是私有的
>
> ==> 我们只需要重写allocWithZone方法，让初始化操作只执行一次
>
> 2、类提供一个类方法用于产生对象
>
> ==> 这个可以直接定义一个类方法
>
> 3、类中有一个私有的自己对象
>
> ==> 我们可以在.m文件中定义一个属性即可

26，[OC学习篇之---总结和学习目录](https://blog.csdn.net/jiangwei0910410003/article/details/41928347)



#### iOS狂暴之路

1，[iOS狂暴之路(开始篇)---学习路线总结](https://blog.csdn.net/jiangwei0910410003/article/details/52413396)

> 在移动端平台中，其实最主要的就是四大核心基础模块：UI控件视图使用、多线程、网络访问、数据本地存储；
>
> 为什么说C语言基础知识必须要了解呢？当初在学习Android的时候，其实后续要使用到NDK开发，C语言也是必须要掌握的，他是核心基础语言，因为后续开发iOS还是会使用OC语言作为基础，那么在开发中，会发现在iOS程序中会经常用到一些C语言的函数和功能，所以C语言必须要掌握，但是我们最主要的还是需要掌握C语言中最核心的几个知识点：指针，结构体和数组；关于其他的知识大致和Java类似，如果你学习过Java的话，关于指针在iOS开发中用到的是最多了，准确的说以后只要在iOS中如果定义一个类型是NS开头的，那么一般都是指针类型，比如：NSString* str；如果是结构体类型的一般是CGRect rect；所以从这一点上我们可以很好的区分类型结构了，而对于指针还有一个重要意义就是能够从一个函数中得到多个返回值，这个也是在开发中经常会用到的，比如在iOS开发中有一个方法执行了一个功能，我们即想知道这个方法执行的结果如何，又想知道执行的过程信息，那么这时候肯定是要返回两个信息了，在Java中我们可能会自定义一个类型封装这两个信息，或者使用回调机制，但是在OC中可以直接使用指针作为一个信息的返回状态，比如：BOOL xxx_YYY:(NSInteger)arg1 zzz:(NSError**)error; 这里看到最后一个参数就可以从函数中得到功能的执行的错误信息，看到他是二级指针，我们在外面只需要定义一个NSError* error1 = nil;然后使用&error1传递参数进入，最后就可以得到这个信息了，这里的&号就是取一个变量的地址，所以这么看到指针就是地址，地址就是指针。
>
> 说到指针，还有一个重要的知识点就是函数指针，关于函数指针的作用就可以想成类似于Java中的回调功能，可以在一个函数中传入一个函数指针类型，在函数内部使用函数指针来调用这个函数功能；当然在OC中也有回调机制只不过叫做协议功能，类似于Java中的接口类型。
>
> 





2，[iOS狂暴之路---iOS的第一个应用中能学到哪些知识](https://blog.csdn.net/jiangwei0910410003/article/details/52781906)

3，[iOS狂暴之路---视图控制器(UIViewController)使用详解](https://blog.csdn.net/jiangwei0910410003/article/details/52971397)

4，[iOS狂暴之路---iOS中应用的数据存储方式解析](https://blog.csdn.net/jiangwei0910410003/article/details/53000565)

5，[iOS狂暴之路--两种布局方式操作详解(xib文件和代码编写)](https://blog.csdn.net/jiangwei0910410003/article/details/80499819)





## [iOS应用程序的生命周期](http://www.jianshu.com/p/aa50e5350852)

> iOS应用程序都遵循`Model-View-Controller`的架构，`Model`负责存储数据和处理业务逻辑，`View`负责显示数据和与用户交互，`Controller`是两者的中介，协调`Model`和`View`相互协作。它们的**通讯规则**如下：
>
> 1. `Controller`能够访问`Model`和`View`，`Model`和`View`不能互相访问
> 2. 当`View`与用户交互产生事件时，使用`target-action`方式来处理
> 3. 当`View`需要处理一些特殊UI逻辑或获取数据源时，通过`delegate`或`data source`方式交给`Controller`来处理
> 4.  `Model`不能直接与`Controller`通信，当`Model`有数据更新时，可以通过`Notification`或`KVO (Key Value Observing)`来通知`Controller`更新`View`
>
> 大多数发生状态转换时都会调用`delegate`对象对应的方法来响应app的状态改变。下面汇总了`delegate`对象的所有方法，当app状态发生转换时，你可能会使用到它们。
>
> - `application:willFinishLaunchingWithOptions:` - 这个方法是你在启动时的第一次机会来执行代码
> - `application:didFinishLaunchingWithOptions:` - 这个方法允许你在显示app给用户之前执行最后的初始化操作
> - `applicationDidBecomeActive:` - app已经切换到active状态后需要执行的操作
> - `applicationWillResignActive:` - app将要从前台切换到后台时需要执行的操作
> - `applicationDidEnterBackground:` - app已经进入后台后需要执行的操作
> - `applicationWillEnterForeground:` - app将要从后台切换到前台需要执行的操作，但app还不是active状态
> - `applicationWillTerminate:` - app将要结束时需要执行的操作



### ViewController的生命周期

> viewDidLoad：在视图加载后被调用，如果是在代码中创建的视图加载器，他将会在loadView方法后被调用，如果是从nib视图页面输出，他将会在视图设置好后后被调用。
>
> viewWillAppear:当收到视图在视窗将可见时的通知会呼叫的方法。默认情况下不执行任何操作
>
> viewDidAppear:当收到视图在视窗已可见时的通知会呼叫的方法，（视图已完全过渡到屏幕上时调用）
>
> viewWillDisappear:当收到视图将去除、被覆盖或隐藏于视窗时的通知会呼叫的方法。默认情况下不执行任何操作loadView;这是当他们没有正在使用nib视图页面，子类将会创建自己的自定义视图层。绝不能直接调用。
>
> viewDidDisappear：当收到视图已去除、被覆盖或隐藏于视窗时的通知会呼叫的方法
>
> didReceiveMemoryWarning：收到系统传来的内存警告通知后会执行的方法
>
> shouldAutorotateToInterfaceOrientation：是否支持不同方向的旋转视图
>
> willAnimateRotationToInterfaceOrientation：在进行旋转视图前的会执行的方法（用于调整旋转视图之用）
>
> **生命周期代码的执行顺序**
> 1、alloc创建对象，分配空间
> 2、init (initWithNibName) 初始化对象，初始化数据
> 3、loadView从nib载入视图，通常这一步不需要去干涉。除非你没有使用xib文件创建视图
> 4、viewDidLoad载入完成，可以进行自定义数据以及动态创建其他控件
> 5、viewWillAppear视图将出现在屏幕之前，马上这个视图就会被展现在屏幕上了
> 6、viewDidAppear视图已在屏幕上渲染完成 
>
> **当一个视图被移除屏幕并且销毁的时候的执行顺序，这个顺序差不多和上面的相反**
> 1、viewWillDisappear视图将被从屏幕上移除之前执行
> 2、viewDidDisappear视图已经被从屏幕上移除，用户看不到这个视图了
> 3、dealloc视图被销毁，此处需要对你在init和viewDidLoad中创建的对象进行释放



##### Tips:

通过`#pragma mark -`分隔代码块  

清楚pod缓存：pod cache clean --all 



[关于bitcode, 知道这些就够了](http://xelz.info/blog/2018/11/24/all-you-need-to-know-about-bitcode/)