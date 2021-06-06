<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Tweet;
use Faker\Generator as Faker;

$factory->define(Tweet::class, function (Faker $faker) {
    return [
        'user_id' => factory(App\User::class)->create,
        'body' => $faker->sentence(),
        'image' => $faker->image('public/storage/images',640,480, null, false),
    ];
});
