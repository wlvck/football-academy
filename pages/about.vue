<template>
  <div class="max-w-[1300px] w-full mx-auto px-4">
    <NavigationBar />
    <div class="text-white md:pt-[80px] pt-[40px]">
      <h1 class="text-center md:text-[48px] text-[36px] font-semibold mb-6">ABOUT US</h1>
      <p class="text-center md:text-[24px] text-[18px] font-medium">
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
          class="md:text-[48px] text-[36px] font-bold text-center mb-5 text-[white] uppercase"
        >
          TROPHIE HALL
        </h1>
        <div
          class="grid md:grid-cols-3 md:gap-4 gap-10 max-w-[1000px] mx-auto text-[23px] font-medium text-center"
        >
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
      <div class="md:my-[100px] my-[40px]">
        <h1
          class="md:text-[48px] text-[36px] font-bold text-center mb-5 text-[white] uppercase"
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
      <div class="md:my-[100px] my-[40px]">
        <h1
          class="md:text-[48px] text-[36px] font-bold text-center mb-5 text-[white] uppercase"
        >
          Our address
        </h1>
        <img
          src="../assets/images/map.png"
          draggable="false"
          class="mx-auto min-h-[250px]"
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
