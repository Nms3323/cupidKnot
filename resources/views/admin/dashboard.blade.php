<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-10">
            <div class="overflow-x-auto relative shadow-md sm:rounded-lg">
                <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                    <thead class="text-xs text-gray-700 uppercase dark:text-gray-400">
                        <tr>
                            <th scope="col" class="py-3 px-6">
                                #ID
                            </th>
                            <th scope="col" class="py-3 px-6 bg-gray-50 dark:bg-gray-800">
                                Name
                            </th>
                            <th scope="col" class="py-3 px-6">
                                Email
                            </th>
                            <th scope="col" class="py-3 px-6 bg-gray-50 dark:bg-gray-800">
                                Date Of Birth
                            </th>
                            <th scope="col" class="py-3 px-6">
                                Gender
                            </th>
                            <th scope="col" class="py-3 px-6 bg-gray-50 dark:bg-gray-800">
                                Annual Income
                            </th>
                            <th scope="col" class="py-3 px-6">
                                Occupation
                            </th>
                            <th scope="col" class="py-3 px-6 bg-gray-50 dark:bg-gray-800">
                                Family Type
                            </th>
                            <th scope="col" class="py-3 px-6">
                                Manglik
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $user_data)
                        <tr class="border-b border-gray-200 dark:border-gray-700">
                            <td class="py-4 px-6">
                                {{ $user_data->id }}
                            </td>
                            <th scope="row" class="py-4 px-6 font-medium text-gray-900 whitespace-nowrap bg-gray-50 dark:text-white dark:bg-gray-800">
                                {{ $user_data->name }} {{ $user_data->last_name }}
                            </th>
                            <td class="py-4 px-6">
                                {{ $user_data->email }}
                            </td>
                            <td class="py-4 px-6 bg-gray-50 dark:bg-gray-800">
                                {{ $user_data->dob }}
                            </td>
                            <td class="py-4 px-6">
                                {{ $user_data->gender }}
                            </td>
                            <td class="py-4 px-6 bg-gray-50 dark:bg-gray-800">
                                {{ $user_data->annual_income }}
                            </td>
                            <td class="py-4 px-6">
                                {{ $user_data->occupation }}
                            </td>
                            <td class="py-4 px-6 bg-gray-50 dark:bg-gray-800">
                                {{ $user_data->family_type }}
                            </td>
                            <td class="py-4 px-6">
                                {{ $user_data->manglik }}
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
</x-app-layout>
