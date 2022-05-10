<template>
    <div>

    <faq-section></faq-section>
    <jet-section-border></jet-section-border>
    <terms-conditions-section></terms-conditions-section>
    <jet-section-border></jet-section-border>
    <how-it-work-section></how-it-work-section>
    <jet-section-border></jet-section-border>
    <checkout-section></checkout-section>


    </div>
</template>

<script>
import  FaqSection from "./Faq.vue";
import  TermsConditionsSection from "./TermsConditions.vue";
import  HowItWorkSection from "./HowItWork.vue";
import CheckoutSection from "./Checkout";


export default {
    components: {
        CheckoutSection,
        FaqSection,
        TermsConditionsSection,
        HowItWorkSection,
    },
};
</script>

<style lang="scss" scoped>
</style>
