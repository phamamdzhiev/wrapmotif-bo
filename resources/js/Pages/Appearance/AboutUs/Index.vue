<template>
    <div>
        <h1>About us page will be rendered here</h1>
        {{ form.title }}
    </div>
</template>

<script>
export default {
    name: "Index.vue",
    data() {
        return {
            form: this.$inertia.form({
                title: this.$page.props.partner?.data?.title,
            }),
        };
    },
}
</script>

<style scoped>

</style>
