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
//        MLPerson *p = [[MLPerson alloc] init];
//        NSLog(@"class address -> %p", [MLPerson class]);
//        struct ml_objc_class *cls01 = (__bridge struct ml_objc_class *)([MLPerson class]);
//        NSLog(@"class isa address -> %p", cls01->isa);
//        NSLog(@"metaclass address -> %p", object_getClass([MLPerson class]));
        
        
        MLPerson *p = [[MLPerson alloc] init];
        __weak MLPerson *p2 = p;
//        objc_setAssociatedObject(p, "11111", @1, OBJC_ASSOCIATION_COPY);
        NSLog(@"123");
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
