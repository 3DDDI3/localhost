<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
  use HasFactory;

  protected $table = 'setting';

  public $fillable = [
    'phone2',
    'email',
    'address',
    'registration_bonuses',
    'bonuses_send_email_number',
    'logo',
    'background'
  ];


}