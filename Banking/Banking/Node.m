//
//  Node.m
//  Banking
//
//  Created by Nikita HN LLP on 20/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import "Node.h"

@implementation Node

@synthesize data,next,balance;

-(id) initNodeWithValue:(NSString*)string balance:(int)amount{
    self = [super init];
    data=string;
    next = nil;
    balance=amount;
    return self;
}
@end
