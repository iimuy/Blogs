//
//  main.m
//  ISA_T
//
//  Created by 李忠 on 2021/12/16.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "MLPerson.h"
#import <objc/runtime.h>

struct ml_objc_class {
    void *isa;
};

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        // arm64e ISA_MASK
        // long long isa_mask = 0x007ffffffffffff8ULL;
        // other ISA_MASK
        long long isa_mask = 0x0000000ffffffff8ULL;
        MLPerson *p = [[MLPerson alloc] init];
        
        Class cls = ([MLPerson class]);
        struct ml_objc_class *cls01 = (__bridge struct ml_objc_class *)(cls);
        
        Class metaCls = object_getClass(cls);
        NSLog(@"%p, %p, %p", p, cls, metaCls);
    
        // has_assoc
        objc_setAssociatedObject(p, "11111", @1, OBJC_ASSOCIATION_COPY);
        
        // weakly_referenced
        __weak MLPerson *p2 = p;
        
        // has_sidetable_rc、extra_rc
        NSMutableArray *pArray = [[NSMutableArray alloc] init];
        for (int i = 1; i <= 254; i++) {
            [pArray addObject:p];
        }
        MLPerson *p3 = p;
        NSLog(@"123");
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
