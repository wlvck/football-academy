<template>
  <div>
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
            <nuxt-link to="/academy" class="inline-block px-3"
              >Academy</nuxt-link
            >
            <a href="#products" class="inline-block px-3">Products</a>
            <nuxt-link to="/community" class="inline-block px-3">Community</nuxt-link>
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
      <div class="grid grid-cols-2 gap-[50px] py-[80px]">
        <div>
          <div class="bg-[#0D0D0D] rounded-[20px] p-[40px] text-[white]">
            <h1 class="text-[24px] font-semibold zeppelin-font">
              JOIN TO ACADEMY
            </h1>
            <p class="text-[18px] font-medium mb-[30px]">
              Be a part of our team
            </p>
            <img src="~/assets/images/frame-5.png" alt="" />
            <div class="flex justify-center items-center cursor-pointer">
              <p class="text-[16px] font-medium mr-2 zeppelin-font">JOIN NOW</p>
              <nuxt-icon name="10" filled />
            </div>
          </div>
        </div>
        <div
          class="bg-[#0D0D0D] rounded-[20px] px-[40px] text-[white] flex justify-between items-start"
        >
          <div class="pt-[40px]">
            <h1 class="text-[24px] font-semibold mb-9 zeppelin-font">
              COMMUNITY
            </h1>
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
      <div class="bg-[#0D0D0D] rounded-[20px] my-[60px] p-[40px]">
        <h2 class="text-[white] text-[24px] font-semibold zeppelin-font">
          PRODUCTS
        </h2>
        <p class="text-[17px] text-[white] font-medium mb-[20px]">
          our own line of products created with our company
        </p>
        <Carousel
          class="carousel"
          :transition="800"
          :items-to-show="4"
          :items-to-scroll="1"
          :autoplay="5000"
          :wrap-around="false"
          :pauseAutoplayOnHover="true"
          :snapAlign="'start'"
        >
          <slide v-for="(item, index) in items" :key="index">
            <div class="max-w-max">
              <img :src="item.imgSrc" alt="" />
              <p class="text-[#FFFFFF] text-[16px] font-medium">
                {{ item.name }}
              </p>
              <p class="text-[#05FF00] text-[16px] font-medium">
                {{ item.price }}
              </p>
            </div>
          </slide>
          <template #addons>
            <navigation />
            <pagination />
          </template>
        </Carousel>
      </div>
      <div class="my-[100px]">
        <h1 class="text-[24px] font-bold text-center mb-5 text-[white]">
          WE ARE LA UNITED
        </h1>
        <img src="../assets/images/frame-10.png" class="mx-auto" alt="" />
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
  </div>
</template>

<script lang="ts">
import 'vue3-carousel/dist/carousel.css';
import { Carousel, Slide, Pagination, Navigation } from 'vue3-carousel';
import { defineComponent, ref } from 'vue';

export default defineComponent({
  components: { Carousel, Slide, Pagination, Navigation },
  setup() {
    const items = ref([
      {
        imgSrc: '_nuxt/assets/images/frame-6.png',
        altText: '',
        name: 'Shirt',
        price: '22$',
      },
      {
        imgSrc: '_nuxt/assets/images/frame-7.png',
        altText: '',
        name: 'Cap',
        price: '15$',
      },
      {
        imgSrc: '_nuxt/assets/images/frame-8.png',
        altText: '',
        name: 'Ball',
        price: '18$',
      },
      {
        imgSrc: '_nuxt/assets/images/frame-9.png',
        altText: '',
        name: 'Bottle',
        price: '10$',
      },
      {
        imgSrc: '_nuxt/assets/images/frame-6.png',
        altText: '',
        name: 'Shirt',
        price: '22$',
      },
      {
        imgSrc: '_nuxt/assets/images/frame-7.png',
        altText: '',
        name: 'Cap',
        price: '15$',
      },
      {
        imgSrc: '_nuxt/assets/images/frame-8.png',
        altText: '',
        name: 'Ball',
        price: '18$',
      },
      {
        imgSrc: '_nuxt/assets/images/frame-9.png',
        altText: '',
        name: 'Bottle',
        price: '10$',
      },
    ]);

    return { items };
  },
});
</script>
<style>
.carousel__icon {
  fill: white;
}
</style>
