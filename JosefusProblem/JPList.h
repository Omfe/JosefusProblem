//
//  JPList.h
//  JosefusProblem
//
//  Created by Omar Gudino on 10/24/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

@class JPList;
@class JPNode;

@protocol JPListDelegate

- (void)list:(JPList *)list didInsertNode:(JPNode *)node;
- (void)list:(JPList *)list didDeleteNode:(JPNode *)node;

@end

@interface JPList : NSObject

@property (strong, nonatomic) JPNode *headNode;
@property (assign, nonatomic) NSInteger numberOfNodes;
@property (assign, nonatomic) id<JPListDelegate> delegate;

- (void)insertNodeWithValue:(NSString *)value;
- (void)deleteNodeAtIndex:(NSInteger)index;
- (JPNode *)findNodeAtIndex:(NSInteger)index;
- (NSString *)iterateListString;

@end
