//
//  main.m
//  Block底层结构
//
//  Created by 李忠 on 2021/12/1.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        void(^block)(int, float) = ^(int a, float b) {
            NSLog(@"这里是特殊的文案！");
        };
        block(1, 1000.0);
    }
    return 0;
}
