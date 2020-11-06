<?php

use App\Http\Controllers\BotManController;

$botman = resolve('botman');

$botman->hears('hi',function($bot){
    $bot->reply("hello");
});


