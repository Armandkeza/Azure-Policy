# Azure-Policy
The above terraform code deploys azure policies to different management group and subscription based on a defined landing zone.
![image](https://github.com/Armandkeza/Azure-Policy/assets/4728642/bb7ff3a6-33cf-46a3-820f-1af81be6851b)
The below policies will be deployed:
-Global Policy: This azure policy will be assigned the root management group and will apply to all management groups and subscriptions in the tenant.  
-Application Policy: It will apply to the Application landing zone management group which will host the different BU applications migrated to the cloud. Common policies that we want applied to the cloud application environement will be defined here.  
-Platform Policy: Platform landing zone consist of the different shared infrastructure that will be used by the application such connectivity, identity,security,etc. We will enforce specific azure policies for our shared infrastructure ressources.  
-BU1 Policy: Each Business unit migrating to the cloud can have it's own specific requirements and we can enforce specific azure policy on the BU management group.  
-Application policy: Different application within a BU can have different requirements, hence we can apply specific policy to an application subscription.  
We use variables file to different the different management group and subscritions ID where our policy will be applied.  
