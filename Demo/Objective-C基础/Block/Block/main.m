//
//  main.m
//  Block
//
//  Created by 李忠 on 2021/12/1.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        // insert code here...
//        void(^block1)(void) = ^() {
//            NSLog(@"block1");
//        };
//        block1();
//
//        void(^block2)(int) = ^(int x) {
//            NSLog(@"block2: x = %d", x);
//        };
//        block2(2);
//
//        int(^block3)(void) = ^{
//            return 10;
//        };
//        NSLog(@"block: %d", block3());
//
//        int (^block4)(int) = ^(int x){
//            NSLog(@"--->%d", x);
//            return x * 2;
//        };
//        NSLog(@"%d", block4(2));
        int a = 10;
//        NSLog(@"%@", ^{
//            NSLog(@"ff%d", a);
//        });
//
        __weak void(^block)(void) = ^{
            NSLog(@"111%d", a);
        };
        NSLog(@"%@", [((NSObject *)block) valueForKey:@"retainCount"]);
    }
    return 0;
}
