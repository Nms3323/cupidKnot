<x-guest-layout>
    <x-jet-authentication-card>
        <x-slot name="logo">
            <x-jet-authentication-card-logo />
        </x-slot>

        <x-jet-validation-errors class="mb-4" />

        <form method="POST" action="{{ route('register') }}">
            @csrf
            <fieldset>
                <legend>Basic Information Section:</legend>
                <div>
                    <x-jet-label for="name" value="{{ __('First Name') }}" />
                    <x-jet-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
                </div>

                <div>
                    <x-jet-label for="last_name" value="{{ __('Last Name') }}" />
                    <x-jet-input id="last_name" class="block mt-1 w-full" type="text" name="last_name" :value="old('last_name')" required autofocus autocomplete="last_name" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="email" value="{{ __('Email') }}" />
                    <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required />
                </div>

                <div class="mt-4">
                    <x-jet-label for="password" value="{{ __('Password') }}" />
                    <x-jet-input id="password" class="block mt-1 w-full" type="password" name="password" required autocomplete="new-password" />
                </div>

                <div class="mt-4">
                    <x-jet-label for="password_confirmation" value="{{ __('Confirm Password') }}" />
                    <x-jet-input id="password_confirmation" class="block mt-1 w-full" type="password" name="password_confirmation" required autocomplete="new-password" />
                </div>
                
                <div class="mt-4">
                    <x-jet-label for="dob" value="{{ __('Date Of Birth') }}" />
                    <x-jet-input id="dob" class="block mt-1 w-full" type="date" name="dob" required/>
                </div>

                <div class="mt-4">
                    <x-jet-label for="gender" value="{{ __('Gender') }}" />
                    <div style="display:flex; ">
                        <x-jet-input id="male" class="block mt-1 mr-2" value="0" type="radio" name="gender" required/>    
                        <x-jet-label class="mr-3" for="male" value="{{ __('Male') }}" />

                        <x-jet-input id="female" class="block mt-1 mr-2" type="radio" value="1" name="gender" required/>    
                        <x-jet-label for="female" value="{{ __('Female') }}" />
                    </div>
                </div>

                <div class="mt-4">
                    <x-jet-label for="annual_income" value="{{ __('Annual income') }}" />
                    <x-jet-input id="annual_income" class="block mt-1 w-full" type="number" name="annual_income" required/>
                </div>

                <div class="mt-4">
                    <x-jet-label for="occupation" value="{{ __('Occupation') }}" />
                    <select class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm block mt-1 w-full" id="occupation" name="occupation">
                        <option value="">--Select Your Occupation--</option>
                        <option value="0">Private Job</option>
                        <option value="1">Government Job</option>
                        <option value="2">business</option>
                    </select>
                </div>

                <div class="mt-4">
                    <x-jet-label for="family_type" value="{{ __('Family Type') }}" />
                    <select class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm block mt-1 w-full" id="family_type" name="family_type">
                        <option value="">--Select Family Type--</option>
                        <option value="0">join Family</option>
                        <option value="1">Nuclear Family</option>
                    </select>
                </div>

                <div class="mt-4">
                    <x-jet-label for="manglik" value="{{ __('Manglik') }}" />
                    <select class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm block mt-1 w-full" id="manglik" name="manglik">
                        <option value="">--Select Manglic--</option>
                        <option value="0">Yes</option>
                        <option value="1">No</option>
                    </select>
                </div>
            </fieldset><br/><br/>

            <fieldset>
                <legend>Partner Prefernce:</legend>

                
                <div class="mt-4">
                    <x-jet-label for="amount" value="{{ __('Amount') }}" />
                    <x-jet-input id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;" class="block mt-1 w-full" type="text" name="amount" required/>
                    <div id="slider-range"></div>
                </div>

                <div class="mt-4">
                    <x-jet-label for="occupation_type" value="{{ __('Occupation') }}" />
                    <select multiple class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm block mt-1 w-full" id="occupation_type" name="occupation_type[]">
                        <option value="">--Select Occupation--</option>
                        <option value="0">Private Job</option>
                        <option value="1">Government Job</option>
                        <option value="2">business</option>
                    </select>
                </div>

                <div class="mt-4">
                    <x-jet-label for="par_family_type" value="{{ __('Family Type') }}" />
                    <select multiple class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm block mt-1 w-full" id="par_family_type" name="par_family_type[]">
                        <option value="">--Select Family Type--</option>
                        <option value="0">join Family</option>
                        <option value="1">Nuclear Family</option>
                    </select>
                </div>

                <div class="mt-4">
                    <x-jet-label for="manglik_type" value="{{ __('Manglik') }}" />
                    <select class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm block mt-1 w-full" id="manglik_type" name="manglik_type">
                        <option value="">--Select Manglic--</option>
                        <option value="0">Yes</option>
                        <option value="1">No</option>
                        <option value="2">Both</option>
                    </select>
                </div>
            </fieldset>

            @if (Laravel\Jetstream\Jetstream::hasTermsAndPrivacyPolicyFeature())
                <div class="mt-4">
                    <x-jet-label for="terms">
                        <div class="flex items-center">
                            <x-jet-checkbox name="terms" id="terms"/>

                            <div class="ml-2">
                                {!! __('I agree to the :terms_of_service and :privacy_policy', [
                                        'terms_of_service' => '<a target="_blank" href="'.route('terms.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Terms of Service').'</a>',
                                        'privacy_policy' => '<a target="_blank" href="'.route('policy.show').'" class="underline text-sm text-gray-600 hover:text-gray-900">'.__('Privacy Policy').'</a>',
                                ]) !!}
                            </div>
                        </div>
                    </x-jet-label>
                </div>
            @endif

            <div class="flex items-center justify-end mt-4">
                <a class="underline text-sm text-gray-600 hover:text-gray-900" href="{{ route('login') }}">
                    {{ __('Already registered?') }}
                </a>

                <x-jet-button class="ml-4">
                    {{ __('Register') }}
                </x-jet-button>
                <a href="{{ url('auth/google') }}" style="margin-top: 0px !important;background: green;color: #ffffff;padding: 5px;border-radius:7px;" class="ml-2">
                  <strong>Google Login</strong>
                </a> 
            </div>
        </form>
    </x-jet-authentication-card>
</x-guest-layout>
