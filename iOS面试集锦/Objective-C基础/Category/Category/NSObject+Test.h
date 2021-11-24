//
//  NSObject+Test.h
//  Category
//
//  Created by 李忠 on 2021/11/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Test)<NSCopying, NSMutableCopying>

@property (nonatomic, assign) int age;
@property (nonatomic, assign) int sex;

- (void)test01;

+ (void)test02;

@end

NS_ASSUME_NONNULL_END
