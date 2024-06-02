<template>
  <div>
    <div
      class="bg-[url(~/assets/images/background-image.png)] min-h-screen relative"
    >
      <NavigationBar />
      <div class="max-w-[1300px] w-full mx-auto px-4">
        <div class="pt-[120px]">
          <h1 class="text-[40px] text-[#E9E9E9] mb-5 zeppelin-font font-bold">
            JOIN THE <br />
            ACADEMY LA UNITED!
          </h1>
          <div class="grid w-[480px] h-[66px] grid-cols-2 gap-5">
            <button
              @click.prevent="$router.push('/academy')"
              class="bg-[#D9D9D9] rounded-[16px] text-[24px] font-semibold text-[#040404] px-4 py-3 mr-4"
            >
              Show more
            </button>
            <button
              @click.prevent="$router.push('/community')"
              class="rounded-[16px] bg-[#D9D9D980] border-solid border-[1px] text-[24px] font-semibold text-[#FFFFFF] border-[#FFFFFF]"
            >
              Join now
            </button>
          </div>
        </div>
      </div>

      <img
        src="~/assets/images/flag.png"
        alt=""
        class="absolute right-0 bottom-0 max-h-[600px]"
      />
    </div>
    <div class="max-w-[1300px] py-[40px] mt-[150px] w-full mx-auto px-4">
      <div class="flex items-center justify-between">
        <img src="~/assets/images/frame-1.png" alt="" />
        <div>
          <h1
            class="text-[36px] font-semibold text-[#FFFFFF] zeppelin-font mb-2"
          >
            DOWNLOAD APP!
          </h1>
          <p class="text-[20px] font-medium text-[#FFFFFF]">
            On the App you can see more information, more details and news!
          </p>
          <p class="text-[20px] font-medium text-[#FFFFFF]">
            Stay with our academy!
          </p>
        </div>
      </div>
    </div>
    <div class="max-w-[1300px] py-[40px] w-full mx-auto px-4">
      <div class="flex items-center justify-between">
        <div>
          <h1
            class="text-[36px] font-semibold zeppelin-font text-[#FFFFFF] mb-2"
          >
            CHECK OUT THE NEWS!
          </h1>
          <p class="text-[20px] font-medium text-[#FFFFFF]">
            Check out the last news, stats our academy!
          </p>
        </div>
        <img src="~/assets/images/frame-2.png" alt="" />
      </div>
    </div>
    <div class="max-w-[1300px] py-[40px] w-full mx-auto px-4">
      <div class="flex items-center justify-between">
        <img src="~/assets/images/frame-3.png" alt="" />
        <div>
          <h1
            class="text-[36px] font-semibold text-[#FFFFFF] zeppelin-font mb-2"
          >
            READ GAME!
          </h1>
          <p class="text-[20px] font-medium text-[#FFFFFF]">
            Always read games, develop a vision
          </p>
        </div>
      </div>
    </div>
    <div class="max-w-[1300px] py-[40px] w-full mx-auto px-4">
      <div class="flex items-center justify-between">
        <div>
          <h1
            class="text-[36px] font-semibold text-[#FFFFFF] zeppelin-font mb-2"
          >
            BE A CHAMPION <br />
            WITH LAUN!
          </h1>
          <p class="text-[20px] font-medium text-[#FFFFFF]">
            You will be a champion with LA UNITED!
          </p>
        </div>
        <img src="~/assets/images/frame-4.png" alt="" />
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
