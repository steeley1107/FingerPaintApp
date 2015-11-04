//
//  DrawingView.m
//  FingerPaintApp
//
//  Created by Steele on 2015-10-30.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "DrawingView.h"
#import "Line.h"

@implementation DrawingView

-(void)drawRect:(CGRect)rect{
    // ask our delegate for data
    NSArray *lines = [self.delegate drawLines];
    
    for (Line *currentLine in lines) {
        
        [currentLine.color setStroke];
        [currentLine.path stroke];
    }
}

@end
