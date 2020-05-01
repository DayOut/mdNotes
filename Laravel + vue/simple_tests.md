## After installation guide 
you need to create new Tests. 
`php artisan make:test TestName` i used `php artisan make:test ContactsTest`

To call the test you need to use `vendor/bin/phpunit` or `vendor/bin/phpunit --filter test_name` where `test_name` is a name of test you want to call
Also you can use `alias pu='vendor/bin/phpunit'` and `alias pf='vendor/bin/phpunit --filter'` then you can use `pf test_name` or just `pu` to start all tests

Then in this test you create function 
```
class ContactsTest extends TestCase
{
    use RefreshDatabase;

    /** @test */
    public function is_unauthenticated_user_should_be_redirected_to_login()
    {
        $response = $this->post('/api/contacts' , $this->data());
        $response->assertRedirect('/login');
        $this->assertCount(0, Contact::all());
    }

    /** @test */
    public function fields_are_required()
    {
        collect(['name', 'email', 'birthday', 'company'])
            ->each(function($field){
                $response = $this->post('/api/contacts' ,
                    array_merge($this->data(), [$field => '']));

                $contact = Contact::first();

                $response->assertSessionHasErrors($field);
                $this->assertCount(0, Contact::all());
        });
    }
}
``` 
and now call `pf is_unauthenticated_user_should_be_redirected_to_login`

All other test will be very similar.