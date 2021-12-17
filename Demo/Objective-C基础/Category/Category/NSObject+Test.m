//
//  NSObject+Test.m
//  Category
//
//  Created by 李忠 on 2021/11/23.
//

#import "NSObject+Test.h"

@implementation NSObject (Test)
- (void)test01 {
    NSLog(@"test01");
}

+ (void)test02 {
    
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return  [NSObject new];
}
@end
