using '../../modules/environment-bicep/addApi/addApi-afa-canonicalUrl.bicep'

param apis = [
  {
    appName : '<your_repository_name>'
    operations: [  // UPDATE THESE VALUES FOR YOUR APPLICATION
	  {
	    name: 'GET-example'    // ex. GET-HelloWorld
	    operationName: 'GET-example'     // ex. GET-HelloWorld
	    method: 'GET'   // ex GET
	    urlTemplate: 'api/example'   // ex '/hello/*'
	  }]
    subscribers : [
      {
          name: 'Developers'
      }
    ]
  }
]


