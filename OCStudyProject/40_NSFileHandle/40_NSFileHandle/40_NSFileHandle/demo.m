//1.-------------------字符串读写文件
NSString *str = @"无线互联";
NSString *homePath = NSHomeDirectory();
NSString *filePath = [homePath stringByAppendingPathComponent:@"Documents/file.text"];
//现在有这样的场景，第一次把字符串写入到文件中，当我们修改字符串之后，再次写入的时候，但是可能会写入失败
//但是之前的内容也有可能丢失，因为每次在写入新的内容的时候，会剪切之前的内容，所以这里就有可能新的没有写
//成功，旧的文件也丢失了
//所以这时候atomically参数：
//YES:会将新内容先写入到一个缓存文件中，如果写入缓存成功之后，这时候就将这个缓存文件替换旧文件，这样就很安全了
BOOL sucess = [str writeToFile:filePath atomically:YES encoding:NSUTF8StringEncoding error:nil];
if(sucess){
    //写入成功
}else{
    //写入失败
}
//读取文件内容到字符串中
//类方法
NSString *str1 = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
//构造方法
//str1 = [[NSString alloc] initWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
NSLog(@"%@",str1);
