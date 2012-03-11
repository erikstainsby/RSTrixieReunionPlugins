//
//  ReactionHide.m
//  ReactionHide
//
//  Created by Erik Stainsby on 12-03-09.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionHide.h"

@interface ReactionHide ()

@end

@implementation ReactionHide

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName:@"Hide"];
		[self setAction:@"hide"];
    }
    
    return self;
}

@end
