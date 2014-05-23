//
//  JKMasterViewController.h
//  xWeight
//
//  Created by Julian Kleine on 22.05.14.
//  Copyright (c) 2014 Julian Kleine. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface JKMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
