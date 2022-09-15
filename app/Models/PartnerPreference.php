<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PartnerPreference extends Model
{
    use HasFactory;
    protected  $table = "partner_preference";

    protected $fillable = [
        'user_id',
        'min_income',
        'max_income',
        'manglik_type'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

}
