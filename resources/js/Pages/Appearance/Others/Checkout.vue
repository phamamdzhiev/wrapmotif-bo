<template>
    <div>
        <jet-form-section @submitted="save">
            <template #title>Checkout page</template>
            <template #description>Change checkout page content.</template>

            <!-- How It Work content -->
            <template #form>

                <!--For Universal -->
                <div class="col-span-12 sm:col-span-6 ">
                    <jet-label for="note_universal" value="Note for universal designs" />
                    <jet-text-input
                        id="note_universal"
                        type="text"
                        class="mt-1 block w-full"
                        v-model="form.note_universal"
                        ref="note_universal"
                        autocomplete="note_universal"
                    />
                    <jet-input-error :message="form.errors.note_universal"/>
                </div>

                <!--For Color -->
                <div class="col-span-12 sm:col-span-6">
                    <jet-label for="note_color" value="Note for color change designs" />
                    <jet-text-input
                        id="note_color"
                        type="text"
                        class="mt-1 block w-full"
                        v-model="form.note_color"
                        ref="note_color"
                        autocomplete="note_color"
                    />
                    <jet-input-error :message="form.errors.note_color"/>
                </div>

                <!--For Color -->
                <div class="col-span-12 sm:col-span-6">
                    <jet-label for="note_color" value="Note for preview designs" />
                    <jet-text-input
                        id="note_preview"
                        type="text"
                        class="mt-1 block w-full"
                        v-model="form.note_preview"
                        ref="note_preview"
                        autocomplete="note_preview"
                    />
                    <jet-input-error :message="form.errors.note_preview" />
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
    name: "checkout",

    components: {
        QuillEditor,
    },

    data() {
        return {
            form: this.$inertia.form({
                note_universal: this.$page.props.checkout?.data?.note_universal,
                note_color: this.$page.props.checkout?.data?.note_color,
                note_preview: this.$page.props.checkout?.data?.note_preview,
            }),
        };
    },

    methods: {
        save() {
            this.form.post(route("appearance.others.checkout"));
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
