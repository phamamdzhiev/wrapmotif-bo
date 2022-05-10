<?php

namespace App\Enums;

/**
 * @method static Service PRINTING_COMPANY()
 * @method static Service WRAPPING_COMPANY()
 * @method static Service PRINTING_AND_WRAPPING_COMPANY()
 */
class Service extends Enum
{
    private const PRINTING_COMPANY               = 'printing';
    private const WRAPPING_COMPANY               = 'wrapping';
    private const PRINTING_AND_WRAPPING_COMPANY  = 'printing_&_wrapping';
}
