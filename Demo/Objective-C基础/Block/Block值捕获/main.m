//
//  main.m
//  Block值捕获
//
//  Created by 李忠 on 2021/12/1.
//

#import <Foundation/Foundation.h>
#import "Person.h"
void setupPerson(Person *pp) {
    NSLog(@"参数Person *pp cout = %@", [pp valueForKey:@"retainCount"]);
    NSLog(@"参数Person *pp cout = %@", [pp valueForKey:@"retainCount"]);
}
int a1 = 10;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /* 局部变量 auto
         int a1 = 10;
         auto int a2 = 20;
         void(^block01)(void) = ^ {
             NSLog(@"a1=%d, a2=%d", a1, a2);
         };
         a1 = 11;
         a2 = 22;
         block01();
         */
        /* 局部变量量static
         static int a1 = 10;
         void(^block01)(void) = ^ {
             NSLog(@"a1=%d", a1);
         };
         a1 = 11;
         block01();
         */
        
        Person *person = [[Person alloc] init];
        NSLog(@"person count = %@", [person  valueForKey:@"retainCount"]);
//        void(^block02)(void);
//        {
//            __weak void(^block01)(void) = ^ {
//                NSLog(@"block1 count = %@", [person  valueForKey:@"retainCount"]);
//            };
//            a1 = 11;
//            block01();
//            block02 = [block01 copy];
//        }
        
        void(^block01)(void) = ^ {
            NSLog(@"block1 count = %@", [person  valueForKey:@"retainCount"]);
        };
        a1 = 11;
        block01();
//        block02 = [block01 copy];

        
        NSLog(@"person count = %@", [person  valueForKey:@"retainCount"]);
        
        block01();
//        block02();
//        person->p2 = [[Person alloc] init];
//        NSLog(@"person.p1 count = %@", [ person->p2  valueForKey:@"retainCount"]);
//
//        person.p1 = [[Person alloc] init];
//        NSLog(@"person.p1 count = %@", [ person.p1  valueForKey:@"retainCount"]);
    }
    return 0;
}

