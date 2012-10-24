//
//  JPPolygonShape.m
//  JosefusProblem
//
//  Created by Omar Gudino on 10/23/12.
//  Copyright (c) 2012 Omar Gudino. All rights reserved.
//

#import "JPPolygonShape.h"

@implementation JPPolygonShape

+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(NSInteger)numberOfSides {
	NSMutableArray *result;
    CGPoint center;
    CGFloat radius;
    CGFloat angle;
    CGFloat exteriorAngle;
    CGFloat rotationDelta;
    CGFloat newAngle;
    CGFloat currentX;
    CGFloat currentY;
    
	center = CGPointMake(rect.size.width / 2.0, rect.size.height / 2.0);
	
	if (numberOfSides % 2 != 0) { //if to better center polygons
		center.y = center.y * (1.0 + 0.1 * ((12.0 - (float)numberOfSides) / 12.0));
	}
	
	radius = 0.8 * center.x;
	
    result = [NSMutableArray array];
	angle = (2.0 * M_PI) / numberOfSides;
	exteriorAngle = M_PI - angle;
	rotationDelta = angle - (0.5 * exteriorAngle);
	
	for (NSInteger currentAngle = 0; currentAngle < numberOfSides; currentAngle++) {
		newAngle = (angle * currentAngle) - rotationDelta;
		currentX = cos(newAngle) * radius;
		currentY = sin(newAngle) * radius;
		[result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + currentX, center.y + currentY)]];
	}
    
    return result;
}

@end