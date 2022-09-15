<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PartnerOccupation extends Model
{
    use HasFactory;
    protected  $table = "partner_occupation";

    protected $fillable = [
        'user_id',
        'occupation_type'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
