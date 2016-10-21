//
//  main.m
//  fileSearch
//
//  Created by Nikita HN LLP on 15/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "search.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        search *searchobj=[[search alloc]init];
        // file path
        NSString* path = @"/Users/bridgeit/Desktop/mac/fileSearch/fileSearch/ninju.txt";
        NSString* fileContents =
        [NSString stringWithContentsOfFile:path
                                  encoding:NSUTF8StringEncoding error:nil];
        // seperating strings with respect to whitespace and newline character
        NSArray* allLinedStrings =
        [fileContents componentsSeparatedByCharactersInSet:
         [NSCharacterSet whitespaceAndNewlineCharacterSet]];

        NSMutableArray* array=[NSMutableArray arrayWithArray:allLinedStrings];
        
        [searchobj wordsearch:array];
            }
    return 0;
}
