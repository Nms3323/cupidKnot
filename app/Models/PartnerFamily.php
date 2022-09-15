<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PartnerFamily extends Model
{
    use HasFactory;
    protected  $table = "partner_family";

    protected $fillable = [
        'user_id',
        'family_type'
    ];
    
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
