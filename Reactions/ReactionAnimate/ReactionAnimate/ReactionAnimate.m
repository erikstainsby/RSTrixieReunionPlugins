//
//  ReactionAnimate.m
//  ReactionAnimate
//
//  Created by Erik Stainsby on 12-03-07.
//  Copyright (c) 2012 Roaring Sky. All rights reserved.
//

#import "ReactionAnimate.h"

@interface ReactionAnimate ()

@end

@implementation ReactionAnimate

@synthesize tableView;
@synthesize tableData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setPluginName: @"Animate"];
		
		tableData = [NSMutableArray array];
    }
    return self;
} 

- (NSString *) emitScript {
	
	NSString * result = [NSString stringWithFormat:@"$('%@').%@(",[[self targetField] stringValue],[self action]];
	
	NSMutableArray * props = [NSMutableArray arrayWithCapacity:[tableData count]];
	for(NSDictionary * rowData in tableData) {
		[props addObject: [NSString stringWithFormat:@"\"%@\":\"%@\"",[rowData valueForKey:@"property"], [rowData valueForKey:@"value"]]];
	}
	NSString * strBuffer = @"";
	for(int i=0; i<[props count];i++) {
		strBuffer = [strBuffer stringByAppendingFormat:@"%@",[props objectAtIndex:i]];
		if( i < [props count]-1) {
			strBuffer = [strBuffer stringByAppendingString:@", "];	
		}
	}
	result = [result stringByAppendingFormat:@"{%@}",strBuffer];
	if([[self callbackField] stringValue] != nil) {
		result = [result stringByAppendingFormat:@", %@",[[self callbackField] stringValue]];
	}
	result = [result stringByAppendingString:@")"];
	return result;
}


#pragma mark - NSTabelViewDataSource methods

- (NSInteger) numberOfRowsInTableView:(NSTableView *)tableView {
	return [tableData count];
}

- (id) tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
	NSDictionary * rowData = [tableData objectAtIndex:row];
	return [rowData valueForKey:[tableColumn identifier]];
}

- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex {
	
	NSMutableDictionary * rowData = [[tableData objectAtIndex:rowIndex] mutableCopy];
	[rowData setValue:anObject forKey:[aTableColumn identifier]];
	[tableData replaceObjectAtIndex:rowIndex withObject:rowData];
	[tableView reloadData];
}

#pragma mark - NSTabelViewDelegate methods

- (IBAction) addAnimatePropVal:(id)sender {
	[tableData addObject:[NSDictionary dictionaryWithObjectsAndKeys:@"prop",@"property",@"val",@"value",nil]];
	[tableView reloadData];
}


@end
