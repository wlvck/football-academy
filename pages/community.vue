<template>
  <div class="max-w-[1300px] w-full mx-auto px-4 pb-[100px]">
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
    <h1 class="text-[20px] font-bold zeppelin-font mb-5 text-[white] mt-[50px]">
      ALL <br />
      COMMUNITY
    </h1>
    <div class="flex flex-row gap-8 mb-[100px]">
      <div class="grow shrink basis-auto text-[white]">
        <div
          class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-5 mb-[40px]"
        >
          <v-tabs
            v-model="tab"
            bg-color="transparent"
            color="white"
            slider-color="#3E3E3E"
          >
            <v-tab value="Latest" elevation="0" :ripple="false">Latest</v-tab>
            <v-tab value="Popular" elevation="0" :ripple="false">Popular</v-tab>
            <v-tab value="Newest" elevation="0" :ripple="false">Newest</v-tab>
            <v-tab value="Oldest" elevation="0" :ripple="false">Oldest</v-tab>
          </v-tabs>
        </div>

        <v-tabs-window v-model="tab">
          <v-tabs-window-item value="Latest">
            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
          <v-tabs-window-item value="Popular">
            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
          <v-tabs-window-item value="Newest">
            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
          <v-tabs-window-item value="Oldest">
            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>

            <div
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                From wich country you are supporting LA UNITED?
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >Arman</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]"
                    >4h ago</span
                  >
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
        </v-tabs-window>
      </div>
    </div>
    <div class="max-w-[600px] mx-auto">
      <h1
        class="text-[20px] font-bold zeppelin-font mb-5 text-[white] mt-[50px]"
      >
        Create community
      </h1>
      <div class="w-full bg-white p-5 rounded-[25px]">
        <v-text-field
          label="Name"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-btn class="w-full !bg-[#ff6600] text-white py-4" height="auto"
          >Submit</v-btn
        >
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';

export default defineComponent({
  setup() {
    const tab = ref('Latest');
    return { tab };
  },
});
</script>
