
# Technicalisto

## How to Display Google map in Spesific Location using GMSMapView pod 'GoogleMaps' 

1. Install :

    pod 'GoogleMaps'

2. In App delegate add & Define your google map key

    import GoogleMaps
   
    let googleApiKey = "your_key"
    
3. In App delegate in method didFinishLaunchingWithOptions add : 

    GMSServices.provideAPIKey(googleApiKey)

4. In your viewController Inherit :

    CLLocationManagerDelegate

    GMSMapViewDelegate
    
5. In Storybored add to your map view class

    GMSMapView
    
6. Check code in githup 

### Thanks

