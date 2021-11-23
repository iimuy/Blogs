//
//  main.m
//  KVC
//
//  Created by 李忠 on 2021/11/23.
//

#import <Foundation/Foundation.h>
#import "LNPerson.h"
#import "LNObserver.h"

/// 基础用法
void test01(void) {
    LNPerson *person = [[LNPerson alloc] init];
    
    /// 设值
    [person setValue:@"" forKey:@""];
    [person setValue:@"" forKeyPath:@""];
    
    /// 取值
    [person valueForKey:@""];
    [person valueForKeyPath:@""];
}

/// 触发KVO，测试设置key的顺序
void test02(void) {
    
    LNObserver *observer = [[LNObserver alloc] init];
    LNPerson *person = [[LNPerson alloc] init];
    [person addObserver:observer forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
    /// 设值
    [person setValue:@10 forKey:@"age"];;
    
    [person removeObserver:observer forKeyPath:@"age"];
    NSLog(@"111");
}

/// 取值
void test03(void) {
    LNPerson *person = [[LNPerson alloc] init];
//    person->_age = 10;
//    person->_isAge = 11;
//    person->age = 12;
//    person->isAge = 13;
    /// 设值
    NSNumber *number = [person valueForKey:@"age"];;
    NSLog(@"age is %@", number);
}

int main(int argc, const char * argv[]) {
    test03();
    return 0;
}
