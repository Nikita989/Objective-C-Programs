//
//  Queue.h
//  Banking
//
//  Created by Nikita HN LLP on 20/10/16.
//  Copyright © 2016 BridgeLabz Solution LLP. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"
@interface Queue : NSObject
{
    Node *head;
  
}
@property(strong) Node *head;
-(void)add:(NSString*)data amount:(int)amount;
-(int)top;
-(id)remove;
-(void)deposit:(int)amount operation:(NSString*)operation;
-(BOOL)isempty;
//-(int)search:(NSString*)word;

@end
