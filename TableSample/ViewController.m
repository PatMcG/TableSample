//
//  ViewController.m
//  TableSample
//
//  Created by Patrick McGarity on 12/3/15.
//  Copyright © 2015 Patrick McGarity. All rights reserved.
//

#import "ViewController.h"
#import "PersonAPIManager.h"
#import "Person+ParsePersonDetails.h"
#import "PersonTableViewDataSource.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) PersonTableViewDataSource *dataSource;

@end

NSString *const PersonBaseURL = @"https://raw.githubusercontent.com/PatMcG/JSONExamples/master/test.json";

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    __weak typeof (self) weakSelf = self;
    
    [PersonAPIManager getPeopleForBaseURL:PersonBaseURL completionHandler:^(NSDictionary *dictionary, NSError *error)
     {
         NSArray *people = [Person parsePersonData:dictionary];
         weakSelf.dataSource = [[PersonTableViewDataSource alloc] initWithItems:people];
         weakSelf.tableView.dataSource = weakSelf.dataSource;
         dispatch_async(dispatch_get_main_queue(), ^
                        {
                            [weakSelf.tableView reloadData];
                        });
     }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
