//
//  Person.m
//  Block
//
//  Created by 李忠 on 2021/12/1.
//

#import "Person.h"

@implementation Person
- (void)testBlock:(void(^)(NSString *name))block {
    block(@"name");
}
@end
