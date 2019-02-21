//
//  Cube.m
//  Tanks Go
//
//  Created by Jason Sekhon on 2019-02-13.
//  Copyright © 2019 Jason Sekhon. All rights reserved.
//

#import "Cube.h"


const Vertex vertices[] = {
    // Front
    {{1, -1, 1}, {1, 0, 0, 1}, {1, 0}, {0, 0, 1}}, // 0
    {{1, 1, 1}, {0, 1, 0, 1}, {1, 1}, {0, 0, 1}}, // 1
    {{-1, 1, 1}, {0, 0, 1, 1}, {0, 1}, {0, 0, 1}}, // 2
    
    {{-1, 1, 1}, {0, 0, 1, 1}, {0, 1}, {0, 0, 1}}, // 2
    {{-1, -1, 1}, {0, 0, 0, 1}, {0, 0}, {0, 0, 1}}, // 3
    {{1, -1, 1}, {1, 0, 0, 1}, {1, 0}, {0, 0, 1}}, // 0
    
    // Back
    {{-1, -1, -1}, {0, 0, 1, 1}, {1, 0}, {0, 0, -1}}, // 4
    {{-1, 1, -1}, {0, 1, 0, 1}, {1, 1}, {0, 0, -1}}, // 5
    {{1, 1, -1}, {1, 0, 0, 1}, {0, 1}, {0, 0, -1}}, // 6
    
    {{1, 1, -1}, {1, 0, 0, 1}, {0, 1}, {0, 0, -1}}, // 6
    {{1, -1, -1}, {0, 0, 0, 1}, {0, 0}, {0, 0, -1}}, // 7
    {{-1, -1, -1}, {0, 0, 1, 1}, {1, 0}, {0, 0, -1}}, // 4
    
    // Left
    {{-1, -1, 1}, {1, 0, 0, 1}, {1, 0}, {-1, 0, 0}}, // 8
    {{-1, 1, 1}, {0, 1, 0, 1}, {1, 1}, {-1, 0, 0}}, // 9
    {{-1, 1, -1}, {0, 0, 1, 1}, {0, 1}, {-1, 0, 0}}, // 10
    
    {{-1, 1, -1}, {0, 0, 1, 1}, {0, 1}, {-1, 0, 0}}, // 10
    {{-1, -1, -1}, {0, 0, 0, 1}, {0, 0}, {-1, 0, 0}}, // 11
    {{-1, -1, 1}, {1, 0, 0, 1}, {1, 0}, {-1, 0, 0}}, // 8
    
    // Right
    {{1, -1, -1}, {1, 0, 0, 1}, {1, 0}, {1, 0, 0}}, // 12
    {{1, 1, -1}, {0, 1, 0, 1}, {1, 1}, {1, 0, 0}}, // 13
    {{1, 1, 1}, {0, 0, 1, 1}, {0, 1}, {1, 0, 0}}, // 14
    
    {{1, 1, 1}, {0, 0, 1, 1}, {0, 1}, {1, 0, 0}}, // 14
    {{1, -1, 1}, {0, 0, 0, 1}, {0, 0}, {1, 0, 0}}, // 15
    {{1, -1, -1}, {1, 0, 0, 1}, {1, 0}, {1, 0, 0}}, // 12
    
    // Top
    {{1, 1, 1}, {1, 0, 0, 1}, {1, 0}, {0, 1, 0}}, // 16
    {{1, 1, -1}, {0, 1, 0, 1}, {1, 1}, {0, 1, 0}}, // 17
    {{-1, 1, -1}, {0, 0, 1, 1}, {0, 1}, {0, 1, 0}}, // 18
    
    {{-1, 1, -1}, {0, 0, 1, 1}, {0, 1}, {0, 1, 0}}, // 18
    {{-1, 1, 1}, {0, 0, 0, 1}, {0, 0}, {0, 1, 0}}, // 19
    {{1, 1, 1}, {1, 0, 0, 1}, {1, 0}, {0, 1, 0}}, // 16
    
    // Bottom
    {{1, -1, -1}, {1, 0, 0, 1}, {1, 0}, {0, -1, 0}}, // 20
    {{1, -1, 1}, {0, 1, 0, 1}, {1, 1}, {0, -1, 0}}, // 21
    {{-1, -1, 1}, {0, 0, 1, 1}, {0, 1}, {0, -1, 0}}, // 22
    
    {{-1, -1, 1}, {0, 0, 1, 1}, {0, 1}, {0, -1, 0}}, // 22
    {{-1, -1, -1}, {0, 0, 0, 1}, {0, 0}, {0, -1, 0}}, // 23
    {{1, -1, -1}, {1, 0, 0, 1}, {1, 0}, {0, -1, 0}}, // 20
};

@implementation Cube

- (instancetype)initWithShader:(BaseEffect *)shader {
    if ((self = [super initWithName:"cube" shader:shader vertices:(Vertex *)vertices vertexCount:sizeof(vertices)/sizeof(vertices[0])])) {
        [self loadTexture:@"dungeon_01.png"];
    }
    return self;
}

- (void)updateWithDelta:(NSTimeInterval)dt {
    //self.rotationZ += M_PI * dt;
    self.rotationY += M_PI/8 * dt;
}

@end
