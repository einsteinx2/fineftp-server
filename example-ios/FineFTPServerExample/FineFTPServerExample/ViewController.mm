//
//  ViewController.m
//  FineFTPServerExample
//
//  Created by Benjamin Baron on 10/27/20.
//

#import "ViewController.h"

// Disable document comment warnings in <fineftp/server.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"
#import <fineftp/server.h>
#pragma clang diagnostic pop

#include <ifaddrs.h>
#include <arpa/inet.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self performSelectorInBackground:@selector(startFTP) withObject:nil];
}

- (void)startFTP {
    // Log device's IP address
    NSLog(@"Device IP address: %@", [ViewController deviceIPAddress]);
    
    // Use the sandboxed documents path as the FTP root directory
    NSString *documentsPath = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject;
    std::string local_root = std::string(documentsPath.UTF8String);
    
    // Log the FTP root directory path and contents
    NSLog(@"documents: %@", documentsPath);
    NSLog(@"contents: %@", [NSFileManager.defaultManager contentsOfDirectoryAtPath:documentsPath error:nil]);
    
    // Create an FTP Server on port 2121. We use 2121 instead of the default port
    // 21, as your application would need root privileges to open port 21.
    fineftp::FtpServer server(2121);
    
    // Add the well known anonymous user and some normal users. The anonymous user
    // can log in with username "anonyous" or "ftp" and any password. The normal
    // users have to provide their username and password.
    server.addUserAnonymous(local_root, fineftp::Permission::All);
    server.addUser("MyUser",   "MyPassword", local_root, fineftp::Permission::ReadOnly);
    server.addUser("Uploader", "123456",     local_root, fineftp::Permission::DirList | fineftp::Permission::DirCreate | fineftp::Permission::FileWrite | fineftp::Permission::FileAppend);
    
    // Start the FTP server with 4 threads. More threads will increase the
    // performance with multiple clients, but don't over-do it.
    server.start(4);
    
    // Prevent the thread from exiting immediatelly. In practice, you would want
    // to check a boolean here to stop the server when needed.
    for (;;) {
        [NSThread sleepForTimeInterval:0.1];
    }
}

+ (NSString *)deviceIPAddress
{
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    
    #if TARGET_IPHONE_SIMULATOR
        #error Specify network interface for computer(iPhone simulator) below and then remove this line (use ifconfig to get the interface name)
        NSString *networkInterface = @"en0";
    #else
        NSString *networkInterface = @"en0";
    #endif
    
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0) {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while (temp_addr != NULL) {
            if( temp_addr->ifa_addr->sa_family == AF_INET) {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if ([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:networkInterface]) {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            
            temp_addr = temp_addr->ifa_next;
        }
    }
    
    // Free memory
    freeifaddrs(interfaces);
    
    return address;
}

@end
