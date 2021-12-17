//
//  LNObserver.m
//  KVC
//
//  Created by 李忠 on 2021/11/23.
//

#import "LNObserver.h"

@implementation LNObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"observeValueForKeyPath - %@", change);
}

@end
