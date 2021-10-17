<?php

namespace App\Http\Controllers;

use App\Export\UserExport;
use Illuminate\Http\Request;
use Illuminate\Pipeline\Pipeline;
use App\Filters\Sort;

class ExportController extends Controller
{
    public function handle(UserExport $export)
    {
        return $posts = app(Pipeline::class)
            ->send($export->action('sort'))
            ->through([
                Sort::class
            ])->thenReturn();

        return $export->action("ok");
    }
}
