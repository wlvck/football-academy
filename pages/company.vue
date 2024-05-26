<template>
  <div class="max-w-[1300px] w-full mx-auto px-4">
    <div>
      <div class="flex items-center justify-between">
        <nuxt-icon
          name="01"
          filled
          class="text-[90px] cursor-pointer"
          @click.prevent="$router.push('/')"
        />
        <div
          class="text-[17px] text-[white] font-medium hidden md:flex items-center"
        >
          <nuxt-link to="/academy" class="inline-block px-3">Academy</nuxt-link>
          <a href="#products" class="inline-block px-3">Products</a>
          <nuxt-link to="/community" class="inline-block px-3"
            >Community</nuxt-link
          >
          <a href="#company" class="inline-block px-3">Company</a>
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
    </div>
    <div class="text-[32px] font-bold text-center pt-[80px]">
      <h1 class="text-[#FF5C00]">GAME BETTER.</h1>
      <h1 class="text-white">START LIVING BEAUTIFULLY WITH OUR TEAM</h1>
    </div>
    <div class="my-[100px] rounded-[20px] overflow-hidden">
      <iframe
        width="100%"
        height="500"
        src="https://www.youtube.com/embed/h4pmzQI7ikI?si=L1u6p2UANLYpoB4Q"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin"
        allowfullscreen
      ></iframe>
    </div>
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
