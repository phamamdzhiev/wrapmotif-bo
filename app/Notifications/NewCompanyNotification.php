<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class NewCompanyNotification extends Notification implements ShouldQueue
{
    use Queueable;

    /**
     * Set the company
     */

    private $company;

    /**
     * Instance new company
     */
    public function __construct($company)
    {
        $this->company = $company;
    }

    public function via($notifiable): array
    {
        return ['mail'];
    }

    public function toMail($notifiable): MailMessage
    {
        return (new MailMessage)->markdown('notifications.new-company', [
            'company' => $this->company,
            'user'  => $notifiable
        ]);
    }

    public function toArray($notifiable): array
    {
        return [
            //
        ];
    }
}
