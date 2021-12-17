//
//  main.m
//  Block类型
//
//  Created by 李忠 on 2021/12/2.
//

#import <Foundation/Foundation.h>

/// 打印三种类型
void printAllType(void) {
    
    ///Global
    void (^block1)(void) = ^ {
        NSLog(@"hello 0001");
    };
    
    /// Malloc
    int age = 10;
    void (^block2)(void) = [^ {
        NSLog(@"hello age=%d", age);
    } copy];
    
    /// Stack
    void (^block3)(void)= ^{
        NSLog(@"hello 00%d", age);
    };
    
    /// 打印他们的类型
    NSLog(@"\n%@ \n%@ \n%@",
          [block1 class],
          [block2 class],
          [block3 class]
          );
}


void (^block)(void);
void testStatckBlock(void) {
    int age = 10;
    block = ^{
        NSLog(@"block --> %d", age);
    };
    NSLog(@"%@", [block class]);
}

/// 打印三种类型的copy
void printAllCopyType(void) {
    
    ///Global
    void (^block1)(void) = ^ {
        NSLog(@"hello 0001");
    };
    
    /// Malloc
    int age = 10;
    void (^block2)(void) = [^ {
        NSLog(@"hello age=%d", age);
    } copy];
    
    /// Stack
    void (^block3)(void)= ^{
        NSLog(@"hello 00%d", age);
    };
    
    /// 打印Global 的 copy
//    NSLog(@"%@:  %@",
//          [block1 class], [[block1 copy] class]
//          );
    
    /// 打印Malloc 的 copy
    NSLog(@"%@:  %@",
          [block2 class], [[block2 copy] class]
          );
//
//    /// 打印Stack 的 copy
//    NSLog(@"%@:  %@",
//          [block3 class], [[block3 copy] class]
//          );
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        testStatckBlock();
//        block();
//        printAllCopyType();
        printAllType();
    }
    return 0;
}
