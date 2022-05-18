<template>
    <div>
        <jet-form-section @submitted="save">
            <template #title>Companies page</template>
            <template #description>Companies page content.</template>

            <!-- How It Work content -->
            <template #form>

                <!-- Title Companies page-->
                <div class="col-span-6 sm:col-span-4">
                    <jet-label for="title" value="Title" />
                    <jet-input id="title" type="text" class="mt-1 block w-full" v-model="form.title" ref="title" autocomplete="title" />
                    <jet-input-error :message="form.errors.title" class="mt-2" />
                </div>

                <!--Description companies page -->
                <div class="col-span-12 sm:col-span-6">
                    <jet-label for="description" value="Description" />
                    <jet-text-input
                        id="description"
                        type="text"
                        class="mt-1 block w-full"
                        v-model="form.description"
                        ref="description"
                        autocomplete="description"
                    />
                    <jet-input-error :message="form.errors.description" />
                </div>

            </template>

            <template #actions>
                <jet-action-message class="mr-3 mt-10">Saved Successfully.</jet-action-message>
                <jet-button>Save</jet-button>
            </template>
        </jet-form-section>
    </div>
</template>

<script>
import { QuillEditor } from "@vueup/vue-quill";
import "@vueup/vue-quill/dist/vue-quill.snow.css";
export default {
    name: "companies",

    components: {
        QuillEditor,
    },

    data() {
        return {
            form: this.$inertia.form({
                title: this.$page.props.companies?.data?.title,
                description: this.$page.props.companies?.data?.description,
            }),
        };
    },

    methods: {
        save() {
            this.form.post(route("appearance.others.companies"));
        },
    },
};
</script>

<style lang="scss" scoped>
.editor-container {
    height: 200px;
    margin: 2rem 0;
}
</style>
