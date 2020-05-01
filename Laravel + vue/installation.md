# install 
`composer global require "laravel/installer"`
Then open file `.bashrc` and paste in the end `export PATH=~/.composer/vendor/bin:$PATH`. Then restart console.

### Create new project
 - `laravel new proj_name` - Create Laravel empty project
 - `composer require laravel/ui` - add ui library
 - `php artisan ui vue --auth` - add auth to vue interface 
 - `npm install vue-router tailwindcss --save-dev` - install Vue router 
 - `npm install`

Then you need to change Routes in `web.php` remove all and then paste: 
```
use Illuminate\Support\Facades\Route;

Auth::routes();

Route::get('/{any}', 'AppController@index')->where('any', '.*');
```

Comment in `AppController.php`
this line 
```
public function __construct()
    {
        //$this->middleware('auth');
    }
``` 

go to the `resources/js/components` and create new Vue component `App` with this code: 
```
<template>
    <div>
        <h1>Hello!</h1>

        <router-view></router-view>
    </div>

</template>

<script>
  export default {
    name: "App"
  }
</script>

<style scoped>

</style>

```

then go to `home.blade.php` and clear file to this state: 
```
@extends('layouts.app')

@section('content')
    <App></App>
@endsection
```

Update `app.js` file 
```
import Vue from 'vue';
import router from './router';
import App from './components/App';

require('./bootstrap');

const app = new Vue({
    el: '#app',
    components: {
        App
    },
    router
});

```

The `resources/js/router.js` file 
```
import Vue from 'vue';
import VueRouter from "vue-router";
import ExampleComponent from "./components/ExampleComponent";

Vue.use(VueRouter);

export default new  VueRouter({
   routes: [
       {path : '/', component: ExampleComponent }
   ],
   mode: 'history'
});
```

and finally `npm run watch` and in another terminal `php artisan serve`

** You are Awesome! ** 