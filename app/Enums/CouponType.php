<?php

namespace App\Enums;

/**
 * @method static CouponType AMOUNT()
 * @method static CouponType PERCENTAGE()
 */
class CouponType extends Enum
{
    private const AMOUNT = 'amount';
    private const PERCENTAGE = 'percentage';
}
