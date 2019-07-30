//
//  main.m
//  DYnamic
//
//  Created by Mike Ross on 7/30/19.
//  Copyright © 2019 Mike Ross. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>

@interface Square:NSObject {
    float area;
}

- (void)calculateAreaOfSide:(CGFloat)side;
- (void)printArea;
@end

@implementation Square
- (void)calculateAreaOfSide:(CGFloat)side {
    area = side * side;
}

- (void)printArea {
    NSLog(@"The area of square is %f",area);
}

@end

@interface Rectangle:NSObject {
    float area;
}

- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth;
- (void)printArea;
@end

@implementation  Rectangle

- (void)calculateAreaOfLength:(CGFloat)length andBreadth:(CGFloat)breadth {
    area = length * breadth;
}

- (void)printArea {
    NSLog(@"The area of Rectangle is %f",area);
}

@end

int main() {
    Square *square = [[Square alloc]init];
    [square calculateAreaOfSide:10.0];
    
    Rectangle *rectangle = [[Rectangle alloc]init];
    [rectangle calculateAreaOfLength:10.0 andBreadth:5.0];
    
    NSArray *shapes = [[NSArray alloc]initWithObjects: square, rectangle,nil];
    id object1 = [shapes objectAtIndex:0];
    [object1 printArea];
    
    id object2 = [shapes objectAtIndex:1];
    [object2 printArea];
    
    return 0;
}
