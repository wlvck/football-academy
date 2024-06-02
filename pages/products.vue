<template>
  <NavigationBar />
  <div class="max-w-[1300px] w-full mx-auto px-4">
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
