<?php

namespace App\Observers;

use App\Jobs\CustomerJob;
use App\Models\Customer;

class CustomerObserver
{
    /**
     * Handle the customer "created" event
     * @param Customer $customer
     * @return void
     */
    public function created(Customer $customer)
    {
        // Send notification to user
        CustomerJob::dispatch($customer);
    }

    public function updated(Customer $customer)
    {
        //
    }

    public function deleted(Customer $customer)
    {
        //
    }

    public function restored(Customer $customer)
    {
        //
    }

    public function forceDeleted(Customer $customer)
    {
        //
    }
}
