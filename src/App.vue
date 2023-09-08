<template>
    <router-view :class="[mode]" />
</template>

<script>
import { defineComponent } from 'vue';
import { useSettingStore } from '@/store';

export default defineComponent({
    setup() {
        return {
            store: useSettingStore()
        };
    },
    computed: {
        mode() {
            return this.store.displayMode;
        }
    }
});
</script>

<style lang="less" scoped>
#nprogress .bar {
    background: var(--td-brand-color) !important;
}
</style>
