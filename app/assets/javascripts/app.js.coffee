hris = angular.module('hris',[
])

hris.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "../templates/"
        controller: "HomeController"
      )
      .when('/user/new',
        templateUrl: "../templates/"
        controller: "UserController"
      )
])