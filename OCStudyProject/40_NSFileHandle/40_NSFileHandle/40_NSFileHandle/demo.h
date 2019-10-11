//4.---------------------NSDictionary读写文件
NSDictionary *dic = @{@"zhang":@"zhangsan",@"li":@"lisi"};
BOOL sucess3 = [dic writeToFile:filePath atomically:YES];
if(sucess3){
    //写入成功
}else{
    //写入失败
}

//读文件
dic = [[NSDictionary alloc] initWithContentsOfFile:filePath];
NSLog(@"%@",dic);