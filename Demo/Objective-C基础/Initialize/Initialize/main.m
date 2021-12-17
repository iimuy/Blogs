//
//  main.m
//  initialize
//
//  Created by 李忠 on 2021/11/26.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [Person alloc];
        [Student alloc];
        NSLog(@"Hello, World!");
    }
    return 0;
}
