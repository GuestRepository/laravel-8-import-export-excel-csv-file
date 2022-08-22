<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Exports\UsersExport;
use App\Imports\UsersImport;
use Maatwebsite\Excel\Facades\Excel;

class MyController extends Controller
{
    public function importExportView()
    {
       return view('import');
    }

    public function export() 
    {
        // return Excel::download(new UsersExport, 'users.xlsx');
        
        // if we want database download use this fuction 
        $slug = 'xlsx';
        $unix_timestamp = now()->timestamp;
        $randomKey = rand(1,10).$unix_timestamp;
        $donwloadExcel = Excel::store(new UsersExport, $randomKey.'.'.$slug);
        return redirect()->route('impexportview')->with('message','database download successfully');

    }

    public function import() 
    {
        Excel::import(new UsersImport,request()->file('file'));
           
        // return back();
        return redirect()->route('impexportview')->with('message','Excel file Import successfully');
    }
}
