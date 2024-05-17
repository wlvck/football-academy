<template>
  <div class="flex flex-col min-h-screen">
    <!-- <navigation-bar /> -->
    <div class="flex-[1_1_auto]">
      <slot></slot>
    </div>
    <CustomFooter/>
  </div>
</template>

<script lang="ts">
export default defineComponent({
  setup() {
    return {};
  },
});
</script>

<style scoped></style>
