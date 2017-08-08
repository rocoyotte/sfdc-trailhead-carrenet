trigger AccountAddressTrigger on Account (before insert) {    
    for(Account a : Trigger.New) {
        if(a.Match_Billing_Address__c == true){
        	//a.ShippingAddress = a.BillingAddress;
            a.ShippingCity = a.BillingCity;
            a.ShippingCountry = a.BillingCountry;
            a.ShippingGeocodeAccuracy = a.BillingGeocodeAccuracy;
            a.ShippingLatitude = a.BillingLatitude;
            a.ShippingLongitude = a.BillingLongitude;
            a.ShippingState = a.BillingState;
            a.ShippingStreet = a.BillingStreet;
            a.ShippingPostalCode = a.BillingPostalCode;            
        }
    }
}