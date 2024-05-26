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
    <div class="text-white pt-[80px]">
      <h1 class="text-center text-[48px] font-semibold mb-6">ABOUT US</h1>
      <p class="text-center text-[24px] font-medium">
        Welcome to the LA United Football Academy — your first step towards big
        football! We are the leading academy in the region, providing
        high-quality training and development of young talents. Our academy was
        founded in 2010 with the mission to develop professional football
        skills, personal qualities and strengthen the health of children and
        adolescents.
      </p>
      <div class="flex items-center justify-center my-[50px]">
        <img src="@/assets/images/white-logo.png" alt="" />
      </div>
      <div>
        <h1
          class="text-[48px] font-bold text-center mb-5 text-[white] uppercase"
        >
          TROPHIE HALL
        </h1>
        <div class="grid grid-cols-3 gap-4 max-w-[1000px] mx-auto text-[23px] font-medium text-center">
          <div class="flex items-center flex-col justify-end">
            <img src="@/assets/images/kubok-2.png" alt="" class="mb-4" />
            <p>
              AlatauCup <br />
              2x
            </p>
          </div>
          <div class="flex items-center flex-col justify-end">
            <img src="@/assets/images/kubok-1.png" alt="" class="mb-4" />
            <p>
              Nomad league <br />
              4x
            </p>
          </div>
          <div class="flex items-center flex-col justify-end">
            <img src="@/assets/images/kubok-3.png" alt="" class="mb-4" />
            <p>
              Supercup of MFL <br />
              1x
            </p>
          </div>
        </div>
      </div>
      <div class="my-[100px]">
        <h1
          class="text-[48px] font-bold text-center mb-5 text-[white] uppercase"
        >
          OUR TEAM
        </h1>
        <img
          src="../assets/images/frame-10.png"
          draggable="false"
          class="mx-auto"
          alt=""
        />
      </div>
      <div class="my-[100px]">
        <h1
          class="text-[48px] font-bold text-center mb-5 text-[white] uppercase"
        >
          Our address
        </h1>
        <img
          src="../assets/images/map.png"
          draggable="false"
          class="mx-auto"
          alt=""
        />
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

<style scoped></style>
