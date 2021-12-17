//
//  Person.h
//  Block
//
//  Created by 李忠 on 2021/12/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
// 01声明一个block 别名
typedef void(PersonBlock)(NSString *name);

@interface Person : NSObject
/// 02当做属性
@property (nonatomic, copy) void(^block1)(void);
/// 03 当做函数参数
- (void)testBlock:(void(^)(NSString *name))block;

@end

NS_ASSUME_NONNULL_END
