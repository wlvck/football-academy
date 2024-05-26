<template>
  <div
    class="max-w-[1300px] w-full mx-auto flex items-center justify-between px-4"
  >
    <nuxt-icon name="01" filled class="text-[90px]" />
    <div
      class="text-[17px] text-[white] font-medium hidden md:flex items-center"
    >
      <nuxt-link to="/academy" class="inline-block px-3">Academy</nuxt-link>
      <nuxt-link to="/products" class="inline-block px-3">Products</nuxt-link>
      <nuxt-link to="/community" class="inline-block px-3">Community</nuxt-link>
      <nuxt-link to="/company" class="inline-block px-3">Company</nuxt-link>
    </div>
    <div class="hidden md:flex items-center">
      <button
        class="border-[1px] border-solid text-[17px] border-[#606060] text-[white] rounded-[8px] px-3 py-2"
        @click.prevent="$router.push({ name: 'auth-login' })"
      >
        Log In
      </button>
      <button
        class="text-[black] text-[17px] bg-[#D9D9D9] px-3 py-2 ml-3 rounded-[8px]"
        @click.prevent="$router.push({ name: 'auth-register' })"
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
