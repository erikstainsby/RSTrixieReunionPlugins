//
//  ReactionClassToggle.m
//  ReactionClassToggle
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionClassToggle.h"

@interface ReactionClassToggle ()

@end

@implementation ReactionClassToggle

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Toggle Classes"];
		[self setAction:@"toggle"];
    }
    
    return self;
}

@end
