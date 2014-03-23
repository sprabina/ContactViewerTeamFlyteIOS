//
//  AddViewController.m
//  ContactViewer
//
//  Created by Prabina Shrestha on 3/23/14.
//  Copyright (c) 2014 Flyte. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()
@property (strong, nonatomic) UIPopoverController *masterPopoverController;
@end

@implementation AddViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.masterPopoverController != nil) {
        [self.masterPopoverController dismissPopoverAnimated:YES];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction) actionSave:(id)sender {
    
    //TODO: persist changes
    
   Contact *newContact = [[Contact alloc] initWithName:self.textName.text andTitle:self.textTitle.text];
   newContact.alias = self.textAlias.text;
   newContact.phone = self.textPhone.text;
   newContact.email = self.textEmail.text;
   newContact.address = self.textAddress.text;
   newContact.socialNetworkHandle = self.textHandle.text;
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
