<template>
  <NavigationBar />
  <div class="max-w-[1300px] w-full mx-auto px-4 pb-[100px]">
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
              v-for="feadback in feadbackList"
              :key="feadback.id"
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                {{ feadback.text }}
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >{{ feadback.userFullName }}</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]">{{
                    reformatDate(feadback.createdAt)
                  }}</span>
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
          <v-tabs-window-item value="Popular">
            <div
              v-for="feadback in feadbackList.slice(1, 3)"
              :key="feadback.id"
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                {{ feadback.text }}
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >{{ feadback.userFullName }}</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]">{{
                    reformatDate(feadback.createdAt)
                  }}</span>
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
          <v-tabs-window-item value="Newest">
            <div
              v-for="feadback in feadbackList.slice(2, 6)"
              :key="feadback.id"
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                {{ feadback.text }}
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >{{ feadback.userFullName }}</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]">{{
                    reformatDate(feadback.createdAt)
                  }}</span>
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
          <v-tabs-window-item value="Oldest">
            <div
              v-for="feadback in feadbackList.slice(3, 7)"
              :key="feadback.id"
              class="border-solid border-[1px] border-[#5F5F5F] rounded-[25px] p-4 mb-5"
            >
              <h2 class="text-[20px] font-bold mb-5">
                {{ feadback.text }}
              </h2>
              <div class="flex justify-between items-center">
                <div class="flex items-center">
                  <nuxt-icon name="11" filled />
                  <span
                    class="text-[14px] font-medium text-[white] inline-block mx-3"
                    >{{ feadback.userFullName }}</span
                  >
                  <span class="text-[14px font-normal opacity-[0.5]]">{{
                    reformatDate(feadback.createdAt)
                  }}</span>
                </div>
                <nuxt-icon name="12" filled class="text-[24px]" />
              </div>
            </div>
          </v-tabs-window-item>
        </v-tabs-window>
      </div>
    </div>
    <div class="max-w-[600px] mx-auto">
      <h1 class="text-white text-center text-[22px] md:text-[40px] mb-[40px]">
        Create community
      </h1>

      <div class="w-full bg-white p-5 rounded-[25px]">
        <v-text-field
          label="Name"
          v-model="feadback"
          variant="outlined"
          color="#ff6600"
        ></v-text-field>
        <v-btn
          :loading="loading"
          class="w-full !bg-[#ff6600] text-white py-4"
          height="auto"
          @click.prevent="createFeadBack"
          >Submit</v-btn
        >
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { defineComponent, ref } from 'vue';
import axios from 'axios';

export default defineComponent({
  setup() {
    const tab = ref('Latest');
    const loading = ref(false);
    const feadback = ref('');
    const feadbackList = ref<
      {
        id: string;
        text: string;
        userId: string;
        userFirstName: string;
        userSecondName: string;
        createdAt: string;
        userFullName: string;
      }[]
    >([]);

    onMounted(async () => {
      const responseList = await axios.get('http://localhost:2003/feedback', {
        headers: { Authorization: `Bearer ${localStorage['accessToken']}` },
      });
      feadbackList.value = responseList.data;
    });

    const createFeadBack = async () => {
      try {
        loading.value = true;
        const response = await axios.post(
          `http://localhost:2003/feedback?text=${feadback.value}`,
          {},
          {
            headers: { Authorization: `Bearer ${localStorage['accessToken']}` },
          }
        );
        feadback.value = '';
        const responseList = await axios.get('http://localhost:2003/feedback', {
          headers: { Authorization: `Bearer ${localStorage['accessToken']}` },
        });
        feadbackList.value = responseList.data;
      } catch (error: any) {
      } finally {
        loading.value = false;
      }
    };

    const reformatDate = (date: string) => {
      const data = new Date(date);
      let day: string | number = data.getDate();
      let month: string | number = data.getMonth() + 1;
      if (month < 10) {
        month = '0' + month;
      }
      if (day < 10) {
        day = '0' + day;
      }
      const year = data.getFullYear();
      return `${day}.${month}.${year}`;
    };
    return {
      tab,
      loading,
      feadback,
      reformatDate,
      createFeadBack,
      feadbackList,
    };
  },
});
</script>
