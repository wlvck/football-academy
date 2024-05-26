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
          <nuxt-link to="/products" class="inline-block px-3"
            >Products</nuxt-link
          >
          <nuxt-link to="/community" class="inline-block px-3"
            >Community</nuxt-link
          >
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
    </div>
    <div class="max-w-[800px] mx-auto my-[80px] bg-white rounded-[25px] p-5">
      <div class="mb-[40px]">
        <v-tabs
          v-model="tab"
          bg-color="transparent"
          color="#FF5C00"
          slider-color="#FF5C00"
        >
          <v-tab value="all" elevation="0" :ripple="false">All products</v-tab>
          <v-tab value="t-short" elevation="0" :ripple="false">T-shirt</v-tab>
          <v-tab value="bottle" elevation="0" :ripple="false">Bag</v-tab>
          <v-tab value="ball" elevation="0" :ripple="false">Ball</v-tab>
          <v-tab value="cap" elevation="0" :ripple="false">Cap</v-tab>
        </v-tabs>
      </div>

      <v-tabs-window v-model="tab">
        <v-tabs-window-item value="all">
          <div class="grid grid-cols-3 gap-5 p-5">
            <div
              v-for="(item, index) in items"
              :key="index"
              class="flex flex-col items-center border-[1px] border-solid border-[#606060] rounded-[12px] cursor-pointer duration-300 hover:scale-[1.06]"
            >
              <img :src="item.imgSrc" alt="" />
              <p class="text-[#000000] text-[16px] font-medium">
                {{ item.name }}
              </p>
              <p class="text-[#05FF00] text-[16px] font-medium">
                {{ item.price }}
              </p>
            </div>
          </div>
        </v-tabs-window-item>
        <v-tabs-window-item value="t-short">
          <div class="grid grid-cols-3 gap-5 p-5">
            <div
              class="flex flex-col items-center border-[1px] border-solid border-[#606060] rounded-[12px] cursor-pointer duration-300 hover:scale-[1.06]"
            >
              <img src="@/assets/images/frame-6.png" alt="" />
              <p class="text-[#000000] text-[16px] font-medium">Shirt</p>
              <p class="text-[#05FF00] text-[16px] font-medium">22$</p>
            </div>
          </div>
        </v-tabs-window-item>
        <v-tabs-window-item value="bottle">
          <div class="grid grid-cols-3 gap-5 p-5">
            <div
              class="flex flex-col items-center border-[1px] border-solid border-[#606060] rounded-[12px] cursor-pointer duration-300 hover:scale-[1.06]"
            >
              <img src="@/assets/images/frame-9.png" alt="" />
              <p class="text-[#000000] text-[16px] font-medium">Bottle</p>
              <p class="text-[#05FF00] text-[16px] font-medium">10$</p>
            </div>
          </div>
        </v-tabs-window-item>
        <v-tabs-window-item value="ball">
          <div class="grid grid-cols-3 gap-5 p-5">
            <div
              class="flex flex-col items-center border-[1px] border-solid border-[#606060] rounded-[12px] cursor-pointer duration-300 hover:scale-[1.06]"
            >
              <img src="@/assets/images/frame-8.png" alt="" />
              <p class="text-[#000000] text-[16px] font-medium">Ball</p>
              <p class="text-[#05FF00] text-[16px] font-medium">18$</p>
            </div>
          </div>
        </v-tabs-window-item>
        <v-tabs-window-item value="cap">
          <div class="grid grid-cols-3 gap-5 p-5">
            <div
              class="flex flex-col items-center border-[1px] border-solid border-[#606060] rounded-[12px] cursor-pointer duration-300 hover:scale-[1.06]"
            >
              <img src="@/assets/images/frame-7.png" alt="" />
              <p class="text-[#000000] text-[16px] font-medium">Cap</p>
              <p class="text-[#05FF00] text-[16px] font-medium">15$</p>
            </div>
          </div>
        </v-tabs-window-item>
      </v-tabs-window>
    </div>
  </div>
</template>

<script lang="ts">
export default defineComponent({
  setup() {
    const tab = ref('all');
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
    ]);
    return { tab, items };
  },
});
</script>
