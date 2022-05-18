<?php

namespace App\Observers;

use App\Enums\ApproveStatus;
use App\Jobs\CompanyApprovedJob;
use App\Jobs\CompanyRequestJob;
use App\Jobs\NotifyUserJob;
use App\Models\Company;

class CompanyObserver
{
    /**
     * Observer fot Company model
     *
     * @param Company $company
     * @return void
     */
    public function created(Company $company)
    {
        // Send notification to company
        CompanyRequestJob::dispatch($company);

        // Send notification to admin
        NotifyUserJob::dispatch($company);
    }

    /**
     * @param Company $company
     * @return void
     */
    public function updated(Company $company)
    {
        // It will send message if company has approved

        if ($company->isDirty('status') && ($company->getOriginal('status') == ApproveStatus::PENDING() || $company->getOriginal('status') == ApproveStatus::REJECTED()) && $company->getAttribute('status') == ApproveStatus::APPROVED()) {
            CompanyApprovedJob::dispatch($company);
        }
    }

    public function deleted(Company $company)
    {
        //
    }

    public function restored(Company $company)
    {
        //
    }

    public function forceDeleted(Company $company)
    {
        //
    }
}
