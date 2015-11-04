//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Steele on 2015-10-30.
//  Copyright © 2015 Steele. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"
#import "Line.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet DrawingView *drawingView;
@property (nonatomic, strong) UIBezierPath *currentPath;
@property (nonatomic) NSMutableArray *lineArray;
@property (nonatomic) Line *currentLine;
@property (nonatomic) UIColor *color;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.drawingView.delegate = self;
    self.lineArray = [NSMutableArray new];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)drawGesture:(UIPanGestureRecognizer *)sender {
    
    CGPoint position = [sender locationInView:self.drawingView];
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        self.currentLine = [[Line alloc] initWithPath: [UIBezierPath new] andColor:self.color];
        [self.lineArray addObject:self.currentLine];
        [self.currentLine.path moveToPoint:position];
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        [self.currentLine.path addLineToPoint:position];
    }
    else if (sender.state == UIGestureRecognizerStateEnded) {
    }
    
    [self.drawingView setNeedsDisplay];
}


- (NSArray *)drawLines {
    NSArray *testArray = [[NSArray alloc] initWithArray:self.lineArray];
    return testArray;
}



- (IBAction)colorPicker:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:
            self.color = [UIColor blackColor];
            break;
        case 1:
            self.color = [UIColor blueColor];
            break;
        case 2:
            self.color = [UIColor greenColor];
            break;
        case 3:
            self.color = [UIColor yellowColor];
            break;
        case 4:
            self.color = [UIColor redColor];
            break;
        default:
            break;
    }
}
- (IBAction)clearScreen:(id)sender {
    [self.lineArray removeAllObjects];
    [self.drawingView setNeedsDisplay];
}

@end
