<?php

namespace App\Actions\Fortify;

use App\Models\User;
use App\Models\PartnerPreference;
use App\Models\PartnerOccupation;
use App\Models\PartnerFamily;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Laravel\Fortify\Contracts\CreatesNewUsers;
use Laravel\Jetstream\Jetstream;

class CreateNewUser implements CreatesNewUsers
{
    use PasswordValidationRules;

    /**
     * Validate and create a newly registered user.
     *
     * @param  array  $input
     * @return \App\Models\User
     */
    public function create(array $input)
    {
        // dd($input);
        Validator::make($input, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => $this->passwordRules(),
            'terms' => Jetstream::hasTermsAndPrivacyPolicyFeature() ? ['accepted', 'required'] : '',
        ])->validate();

        $user = User::create([
            'name' => $input['name'],
            'last_name' => $input['last_name'],
            'email' => $input['email'],
            'password' => Hash::make($input['password']),
            'dob' => $input['dob'],
            'gender' => $input['gender'],
            'annual_income' => $input['annual_income'],
            'occupation' => $input['occupation'],
            'family_type' => $input['family_type'],
            'manglik' => $input['manglik']
        ]);

        $input['amount'] = str_replace('₹', '', $input['amount']);
        $amount = explode(' - ',$input['amount']);
        PartnerPreference::create([
            'user_id' => $user->id,
            'min_income' => $amount[0],
            'max_income' => $amount[1],
            'manglik_type' => $input['manglik_type']
        ]);
        
        for($i = 0; $i < count($input['occupation_type']); $i++){
            PartnerOccupation::create([
                'user_id' => $user->id,
                'occupation_type' => $input['occupation_type'][$i],
            ]);
        }

        for($i = 0; $i < count($input['par_family_type']); $i++){
            PartnerFamily::create([
                'user_id' => $user->id,
                'family_type' => $input['par_family_type'][$i],
            ]);
        }
        return $user;
    }
}
