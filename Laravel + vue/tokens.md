Add new test 
```
    /** @test */
    public function is_unauthenticated_user_should_be_redirected_to_login()
    {
        $response = $this->post('/api/contacts' , $this->data());
        $response->assertRedirect('/login');
        $this->assertCount(0, Contact::all());
    }
```

then modify routes file `api.php` to this
```
<?php

use illuminate\http\request;
use illuminate\support\facades\route;

route::middleware('auth:api')->group(function (){

    route::get('/contacts/{contact}', 'ContactsController@show');
    route::post('/contacts', 'ContactsController@store');
    route::patch('/contacts/{contact}', 'ContactsController@update');
    route::delete('/contacts/{contact}', 'ContactsController@destroy');
});
``` 

Add api_token to User model, UserFactory, User migration

add setUp function in Test 
```
use RefreshDatabase;

protected $user;

protected function setUp(): void
{
   parent::setUp();
   $this->user = factory(User::class)->create();
}
```
and add token to all sending data