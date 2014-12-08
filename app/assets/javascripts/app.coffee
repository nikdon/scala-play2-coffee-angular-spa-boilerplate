scotchApp = angular.module('scotchApp', ['ngRoute'])


scotchApp.config(($routeProvider) ->
  $routeProvider

  # home page
  .when('/', {
      templateUrl: '/assets/partials/home.html',
      controller: 'mainController'
    })

  # about page
  .when('/about', {
      templateUrl: '/assets/partials/about.html',
      controller: 'aboutController'
    })

  # contact page
  .when('/contact', {
      templateUrl: '/assets/partials/contact.html',
      controller: 'contactController'
    })

  .otherwise({redirectTo: '/'})
)


scotchApp.controller('mainController', ($scope) ->
  $scope.message = 'Everyone come and see how good I look!!'
)

scotchApp.controller('aboutController', ($scope) ->
  $scope.message = 'Look! I am an about page.'
)

scotchApp.controller('contactController', ($scope) ->
  $scope.message = 'Contact us! JK. This is just a demo.'
)
