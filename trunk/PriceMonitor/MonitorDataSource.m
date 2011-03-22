//
//  MonitorDataSource.m
//  PriceMonitor
//
//  Created by hubdog on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MonitorDataSource.h"


@implementation MonitorDataSource

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle 
	forRowAtIndexPath:(NSIndexPath *)indexPath
{
	if (editingStyle == UITableViewCellEditingStyleDelete){
		id object = [[self.items objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
		//[self.model didDeleteObject:object atIndexPath:indexPath];
		
		if ([self removeItemAtIndexPath:indexPath andSectionIfEmpty:YES]){
			[tableView deleteSections:[NSIndexSet indexSetWithIndex:indexPath.section ] withRowAnimation:UITableViewRowAnimationFade];
		} else {
			//NSLog([NSString stringWithFormat:@"row:%d section:%d", indexPath.row, indexPath.section]);
			
			[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
		}
	}
}

//- (NSIndexPath*)tableView:(UITableView*)tableView willRemoveObject:(id)object
//			  atIndexPath:(NSIndexPath*)indexPath
//{
//	//Todo: delete object from db
//	
//	if ([self removeItemAtIndexPath:indexPath andSectionIfEmpty:YES]){
//		return [NSIndexPath indexPathWithIndex:indexPath.section];
//	} else {
//		return indexPath;
//	}
//}
@end
