<template>
  <div>
    <div class="max-w-[1300px] w-full mx-auto px-4">
      <div>
        <div class="flex items-center justify-between">
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
      </div>
      <div class="grid grid-cols-2 gap-[50px] py-[80px]">
        <div>
          <div class="bg-[#0D0D0D] rounded-[20px] p-[40px] text-[white]">
            <h1 class="text-[24px] font-semibold">JOIN TO ACADEMY</h1>
            <p class="text-[18px] font-medium mb-[30px]">
              Be a part of our team
            </p>
            <img src="~/assets/images/frame-5.png" alt="" />
            <div class="flex justify-center items-center cursor-pointer">
              <p class="text-[16px] font-medium mr-2">JOIN NOW</p>
              <nuxt-icon name="10" filled />
            </div>
          </div>
        </div>
        <div class="bg-[#0D0D0D] rounded-[20px] px-[40px] text-[white] flex justify-between items-start">
          <div class="pt-[40px]">
            <h1 class="text-[24px] font-semibold mb-9">COMMUNITY</h1>
            <ul class="text-[16px] font-medium">
              <li class="mb-1">WE BELIEVE!</li>
              <li class="mb-1">Next match VS Qairat</li>
              <li class="mb-1">My team, My dream</li>
              <li class="mb-1">A Trophy hall</li>
              <li class="mb-1">i am going to cry</li>
              <li class="mb-1">So funny ^^</li>
              <li class="mb-1">What does mean LA?</li>
              <li class="mb-1">Good luck!</li>
              <li class="mb-1">gg</li>
              <li class="mb-1">It’s A! Pit!</li>
            </ul>
          </div>
          <div class="pt-3">
            <nuxt-icon name="01" filled class="text-[90px]" />
          </div>
        </div>
      </div>
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
