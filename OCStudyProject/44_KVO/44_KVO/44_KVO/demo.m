//观察小孩的hapyValue
//使用KVO为_children对象添加一个观察者，用于观察监听hapyValue属性值是否被修改
[_children addObserver:self forKeyPath:@"hapyValue" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:@"context"];

//观察小孩的hurryValue
[_children addObserver:self forKeyPath:@"hurryValue" options:NSKeyValueObservingOptionNew |NSKeyValueObservingOptionOld context:@"context"];