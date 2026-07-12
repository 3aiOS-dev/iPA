%hook SpringBoard

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    %orig;
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"مرحباً" 
                                                                    message:@"تطبيق iOS تجريبي" 
                                                             preferredStyle:UIAlertControllerStyleAlert];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"تم" 
                                              style:UIAlertActionStyleDefault 
                                            handler:nil]];
    
    [[UIApplication sharedApplication].windows[0].rootViewController presentViewController:alert 
                                                                                 animated:YES 
                                                                               completion:nil];
}

%end
