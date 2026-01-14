 @allowed(['dev', 'prod'])
 param environment string

targetScope = 'resourceGroup'

module appService './appservice.bicep' = {
   name: 'appservice'
   params: {
     appName: 'workshop-dnazghbicep-scottsauberlt-${environment}'
     location: 'centralus'
     environment: environment
   }
 }
