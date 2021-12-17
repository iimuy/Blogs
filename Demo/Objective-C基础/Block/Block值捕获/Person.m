//
//  Person.m
//  Block值捕获
//
//  Created by 李忠 on 2021/12/2.
//

#import "Person.h"

@implementation Person
- (void)test{
    void(^block)(void) = ^{
        NSLog(@"%@",self);
    };
    block();
}
@end
