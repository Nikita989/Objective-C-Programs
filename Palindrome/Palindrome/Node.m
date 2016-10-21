//
//  Node.m
//  Palindrome
//
//  Created by Nikita HN LLP on 21/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize data,next;

-(id)initNodeWithValue:(char)string
{
    self = [super init];
    data=string;
    next = nil;
    
    return self;
}

@end
