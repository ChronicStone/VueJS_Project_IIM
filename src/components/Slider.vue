<!-- Component du slider -->
<template>
  <div id="blocSlider">
	<Slider style="	border-radius:8px;"
      animation="fade"
      v-model="sliderValue"
      :duration="5000"
      :speed="1000"
    >
      <SliderItem
        v-for="(i, index) in list"
        :key="index"
        @click="changeIndex(1);"
        :style="i"
      >
      </SliderItem>
    </Slider>	
  </div>
</template>

<script>

const axios = require('axios').default;
import { Slider, SliderItem } from "vue-easy-slider";

export default {
  name: "App",
  components: {
    Slider,
    SliderItem
  },
  data() {
    return {
      list: [],
      sliderValue: 2,
      images: []
    };
  },
  methods: {
    changeIndex(index) {
      this.sliderValue = index;
    }
  },
  mounted() {
    axios.
      get('https://picsum.photos/1500/400').
      then(response => (this.info = response.data))

    setTimeout(
      () =>
        (this.list = [
          {
            backgroundImage: "url('https://picsum.photos/1500/400')",
            width: "100%",
            height: "100%"
          },
          {
            backgroundImage: "url('https://picsum.photos/1300/400')",
            width: "100%",
            height: "100%"
          },
          {
            backgroundImage: "url('https://picsum.photos/1400/400')",
            width: "100%",
            height: "100%"
          },
          {
            backgroundImage: "url('https://picsum.photos/1300/500')",
            width: "100%",
            height: "100%"
          }
        ]),
      1000
    );
  }
};
</script>

<style scoped>

#blocSlider {
	width:80%;
	height:20%;
	border-radius:8px;
	box-shadow: -1px 1px 8px rgba(17, 17, 17, 0.336);
}
</style>