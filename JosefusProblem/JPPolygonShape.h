//
//  JPPolygonShape.h
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPPolygonShape : NSObject

// Returns array of CGPoints wrapped in a NSValue
+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(NSInteger)numberOfSides;

@end
