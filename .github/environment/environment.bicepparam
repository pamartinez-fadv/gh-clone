using '../../modules/environment-bicep/environment.bicep'

//leave blank for CD 
param destination = ''   
param environmentName = '' 
param appName = ''
param repository =  '' 

param environment = {
  functionAppSettings: {
    runtime: '<your_runtime_option>' // Runtime options: 'node', 'java', 'dotnet-isolated'
    linuxFxVer: '<your_runtime_version>' // Specify the version of the runtime. Options include: 'node|18', 'JAVA|17', 'dotnet-isolated|8.0'
    appSettingsNA: {}
    appSettingsEU: {}
    healthCheckPath: '/api/ping'  // this is an example // Modify this path to your application's health check endpoint
  }
}

param overrides = {
  dev01: {
    functionAppSettings: {
      appSettingsNA: {}
    }
  }
}

