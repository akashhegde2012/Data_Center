const assert = require('assert');
const expect = require('chai').expect
const request = require('supertest');
const app = require('./app.js')
const routes = ['/students','/teachers','/institution','/login','/departments/:id','/departments/research','/departments/form','/institution/courses','/institution/programs','/institution/other','/students/outgoing','/students/new','/students/enrolled','/students/exam','/teachers/present','/teachers/left']
routes.forEach(route=>{
  describe(`Unit testing ${route} the  route`, function() {

    it('should return OK status', function() {
      return request(app)
        .get(route)
        .then(function(response){
          assert.equal(response.status, 200)
        })
    });

   

});
})