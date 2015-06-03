//
//  main.m
//  BlockShowCase
//
//  Created by Zhaoyu Li on 3/6/15.
//  Copyright (c) 2015 Zhaoyu Li. All rights reserved.
//

// learn from https://www.mikeash.com/pyblog/friday-qa-2008-12-26.html
// and http://fuckingblocksyntax.com/


#import <Foundation/Foundation.h>

//typedef void(^x)();
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int a = 42;
        char *b = "fork!";
        void(^x)() = ^{ printf("a is %d and b is %s\n", a, b); };
        x();
        
        void(^y)(int a, char *b) = ^(int a, char *b){ printf("a is %d and b is %s\n", a, b);};
        y(45, "hello word");
        
        
        int (^z)(int n) = ^(int n){ return n + 1;};
        
        printf("result of block z is %d", z(100));
        
        NSArray *array;
        [array enumerateObjectsWithOptions:NSEnumerationConcurrent usingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            
        }];
        
        
        
    }
    return 0;
}
