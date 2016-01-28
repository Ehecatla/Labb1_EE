//
//  ViewControllerSettings.m
//  Labb1EE
//
//  Created by ITHS-Ella on 2016-01-28.
//  Copyright © 2016 ITHS-Ella. All rights reserved.
//

#import "ViewControllerSettings.h"

@interface ViewControllerSettings ()
@property (weak, nonatomic) IBOutlet UILabel *boxTextLabel;
@property (weak, nonatomic) IBOutlet UIView *theBox;


@end

@implementation ViewControllerSettings

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)activateGreenTheme:(UIButton *)sender {
    [self changeBoxTheme:1];
    self.boxTextLabel.text= @"You chose button 1";
}

- (IBAction)activateWhiteTheme:(UIButton *)sender {
    [self changeBoxTheme:2];
    self.boxTextLabel.text= @"You chose button 2";
}

- (IBAction)activateSomeBlue:(UIButton *)sender {
    [self changeBoxTheme:3];
    self.boxTextLabel.text= @"You chose button 3";
}
- (IBAction)activateSomeBlack:(UIButton *)sender {
    [self changeBoxTheme:4];
    self.boxTextLabel.text= @"You chose button 4";
}

- (IBAction)activateSomeGray:(UIButton *)sender {
    [self changeBoxTheme:5];
    self.boxTextLabel.text= @"You chose button 5";
}



-(void)changeBoxTheme:(int)themeNumber {
    if(themeNumber==1){
        self.theBox.backgroundColor=[UIColor greenColor];
    } else if(themeNumber==2){
        self.theBox.backgroundColor=[UIColor whiteColor];
    } else if(themeNumber==3){
        self.theBox.backgroundColor=[UIColor colorWithRed:106.0f/255.0f green:157.0f/255.0f blue:214.0f/255.0f alpha:1.0];
        
    } else if(themeNumber==4){
        self.theBox.backgroundColor=[UIColor blackColor];
        
    } else if(themeNumber==5){
        self.theBox.backgroundColor=[UIColor grayColor];
        
    }
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
