<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    @foreach ($data as $user_data)
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
            <div class="overflow-hidden bg-white shadow sm:rounded-lg">
                <div class="px-4 py-5 sm:px-6">
                    <h3 class="text-lg font-medium leading-6 text-gray-900">{{ $user_data->name }} {{ $user_data->last_name }}</h3>
                    <p class="mt-1 max-w-2xl text-sm text-gray-500">Date Of Birth : {{ $user_data->dob }}</p>
                </div>
                <div class="border-t border-gray-200">
                    <dl>
                    <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">Occupation</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">
                            @if($user_data->occupation == 0)
                            @php $occupation = 'Private Job' @endphp
                            @elseif($user_data->occupation == 0)
                            @php $occupation = 'Government Job' @endphp
                            @else
                            @php $occupation = 'Business' @endphp
                            @endif
                            {{ $occupation }}
                        </dd>
                    </div>
                    <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">Family Type</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">
                            @if($user_data->family_type == 0)
                            @php $family_type = 'Join Family' @endphp
                            @else
                            @php $family_type = 'Nuclear Family' @endphp
                            @endif
                            {{ $family_type }}
                        </dd>
                    </div>
                    <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">Manglik</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">
                            @if($user_data->manglik == 0)
                            @php $manglic_type = 'Manglik' @endphp
                            @else
                            @php $manglic_type = 'Not Manglik' @endphp
                            @endif
                            {{ $manglic_type }}
                        </dd>
                    </div>
                    <div class="bg-white px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">Annual Income</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">{{ $user_data->annual_income }}</dd>
                    </div>
                    <div class="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-3 sm:gap-4 sm:px-6">
                        <dt class="text-sm font-medium text-gray-500">Email Id</dt>
                        <dd class="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">{{ $user_data->email }}</dd>
                    </div>
                    
                    </dl>
                </div>
            </div>
        </div>
    </div>
    @endforeach
</x-app-layout>
