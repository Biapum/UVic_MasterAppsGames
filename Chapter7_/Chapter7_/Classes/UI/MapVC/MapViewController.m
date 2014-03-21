//
//  MapViewController.m
//  Chapter7_
//
//  Created by Valenti on 21/03/14.
//  Copyright (c) 2014 Biapum. All rights reserved.
//

#import "MapViewController.h"

#import <MapKit/MapKit.h>

#import "UniversityMapEntity.h"

@interface MapViewController ()<MKMapViewDelegate>
@property (nonatomic,strong) IBOutlet MKMapView *mapViewUniversities;
@end

@implementation MapViewController

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
    
    [self.mapViewUniversities setShowsUserLocation:YES];
    [self.mapViewUniversities setDelegate:self];
    
    // Do any additional setup after loading the view from its nib.
    
    CLLocationCoordinate2D annotationCoord;
    annotationCoord.latitude = 41.93373;
    annotationCoord.longitude = 2.24737;
    
//    MKPointAnnotation *annotationBasicPoint = [[MKPointAnnotation alloc] init];

    UniversityMapEntity *annotationBasicPoint = [[UniversityMapEntity alloc] init];
    
    [annotationBasicPoint setCoordinate:annotationCoord];
    [annotationBasicPoint setTitle:@"Universitat de Vic"];
    [annotationBasicPoint setSubtitle:@"Vic"];
    [annotationBasicPoint setFounded:@"1987"];
    
    [self.mapViewUniversities addAnnotation:annotationBasicPoint];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Map Delegate methods
- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
    NSLog(@"didUpdateUserLocation");
    self.mapViewUniversities.centerCoordinate = userLocation.location.coordinate;
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    if ([annotation isKindOfClass:[MKUserLocation class]])
    {
        return nil;
    }
    
    MKPinAnnotationView *pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@""];
    [pin setPinColor:MKPinAnnotationColorPurple];
    
    [pin setRightCalloutAccessoryView:[UIButton buttonWithType:UIButtonTypeDetailDisclosure]];
    
    [pin setCanShowCallout:YES];
    return pin;
}

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    UniversityMapEntity *uniObject = (UniversityMapEntity*)view.annotation;
    NSLog(@"calloutAccessoryControlTapped founded%@",uniObject.founded);
}







@end
