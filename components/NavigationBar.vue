<template>
  <div
    class="max-w-[1300px] w-full mx-auto flex items-center justify-between px-4"
  >
    <nuxt-icon name="01" filled class="text-[90px]" />
    <div
      class="text-[17px] text-[white] font-medium hidden md:flex items-center"
    >
      <a href="#academy" class="inline-block px-3">Academy</a>
      <a href="#products" class="inline-block px-3">Products</a>
      <a href="#community" class="inline-block px-3">Community</a>
      <a href="#company" class="inline-block px-3">Company</a>
    </div>
    <div class="hidden md:flex items-center">
      <button
        class="border-[1px] border-solid text-[17px] border-[#606060] text-[white] rounded-[8px] px-3 py-2"
      >
        Log In
      </button>
      <button
        class="text-[black] text-[17px] bg-[#D9D9D9] px-3 py-2 ml-3 rounded-[8px]"
      >
        Sign Up
      </button>
    </div>
    <nuxt-icon name="02" filled class="block md:hidden" />
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
export default defineComponent({
  setup() {
    return {};
  },
});
</script>

<style scoped></style>
