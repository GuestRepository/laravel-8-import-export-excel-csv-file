<?php

namespace App\Imports;

use App\Models\User;
use Maatwebsite\Excel\Concerns\ToModel;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class UsersImport implements ToModel
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new User([
            "name" => $row[0],
            // "last_name" => $row['last_name'],
            "email" => $row[1],
            // "mobile_number" => $row['mobile_number'],
            // "role_id" => 2, // User Type User
            // "status" => 1,
            "password" => Hash::make('password')
        ]);
    }

    public function uploadUsers(Request $request)
{
        Excel::import(new UsersImport, $request->file);

        return redirect()->route('users.index')->with('success', 'User Imported Successfully');
}
}
