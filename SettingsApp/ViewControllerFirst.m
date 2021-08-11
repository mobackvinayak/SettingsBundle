//
//  ViewControllerFirst.m
//  SettingsApp
//
//  Created by Vinayak Tudayekar on 10/08/21.
//

#import "ViewControllerFirst.h"

@interface ViewControllerFirst ()

@end

@implementation ViewControllerFirst

- (void)viewDidLoad {
    [super viewDidLoad];
   /* NSUserDefaults * standardDefaults = [NSUserDefaults standardUserDefaults];
    NSString *username = [standardDefaults stringForKey:@"name_preference"];
    NSLog(@"%@", username);
    */

       // Do any additional setup after loading the view.
}
- (BOOL)getToggle {
    return _toggle;
}

- (void)setToggle:(BOOL)toggle{
    NSUserDefaults *switchitem = [NSUserDefaults standardUserDefaults];
    BOOL isEnabledToggel = [switchitem valueForKey:@"enabled_preference"];
    _toggle = isEnabledToggel;
}
- (NSString *)getMultiValue {
    return _multiValue;
}

- (void)setMultiValue:(NSString*)multiValue{
    NSUserDefaults *Multivalue = [NSUserDefaults standardUserDefaults];

    NSString *isSelected = [Multivalue valueForKey:@"user_selectOption"];
    _multiValue = isSelected;
}
- (NSString *)getName {
    return _nameValue;
}

- (void)setName:(NSString*)name{
    NSUserDefaults * standardDefaults = [NSUserDefaults standardUserDefaults];
    NSString *username = [standardDefaults stringForKey:@"name_preference"];
    _nameValue = username;
}
- (NSInteger *)getSlider {
    return _sliderValue;
}

- (void)setSliderValue:(NSInteger *)sliderValue{
    NSUserDefaults * standardDefaults = [NSUserDefaults standardUserDefaults];

    NSInteger mySliderValue = [standardDefaults integerForKey:@"slider_preference"];
    _sliderValue = &mySliderValue;
}
- (void)viewWillAppear:(BOOL)animated{
   
   
    
   /* NSUserDefaults *switchitem = [NSUserDefaults standardUserDefaults];

    BOOL isEnabledToggel = [switchitem valueForKey:@"enabled_preference"];
    
    if (isEnabledToggel == YES) {
        NSLog(@"Enabled");
    } else {
        NSLog(@"Disabled");

    }
    NSUserDefaults *Multivalue = [NSUserDefaults standardUserDefaults];

    NSString *isSelected = [Multivalue valueForKey:@"user_selectOption"];
    
    NSLog(@"%@", isSelected);
    */
    
}



@end
