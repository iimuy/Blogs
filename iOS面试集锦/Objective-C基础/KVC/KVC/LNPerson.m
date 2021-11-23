//
//  LNPerson.m
//  KVC
//
//  Created by 李忠 on 2021/11/23.
//

#import "LNPerson.h"

@implementation LNPerson
//- (void)setAge:(int)age {
//    NSLog(@"setAge:");
//}

//- (void)_setAge:(int)age {
//    NSLog(@"_setAge:");
//}
+ (BOOL)accessInstanceVariablesDirectly {
    return YES;
}
//- (int)getAge {
//    NSLog(@"getAge");
//    return 1;
//}
//- (int)age {
//    NSLog(@"age");
//    return 11;
//}
//- (int)isAge {
//    NSLog(@"isAge");
//    return 12;
//}
//- (int)_age {
//    NSLog(@"_age");
//    return 13;
//}
@end
