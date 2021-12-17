//
//  Person.h
//  Block值捕获
//
//  Created by 李忠 on 2021/12/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
@public
    Person *p2;
}
@property (nonatomic, retain) Person *p1;

@end

NS_ASSUME_NONNULL_END
