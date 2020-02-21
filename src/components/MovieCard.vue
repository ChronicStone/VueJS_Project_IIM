<!-- Component de la navbar -->
<template>
  <div>
    <div class="flex justify-center flex-wrap p-10">
        <div class="relative w-48 h-64 m-5 bg-white shadow-lg rounded">
            <div class="flex items-center w-48 h-20 bg-yellow-600 rounded-t imgMovie" :style="'background-image:url(' + poster + ')'"></div>
            <p class="mx-2 py-2 border-b-2 text-center text-gray-700 font-semibold uppercase"> {{title}} </p>
            <p class="p-2 text-sm text-gray-700"> - Année de sortie : {{year}} </p>
            <p class="p-2 text-sm text-gray-700"> - Type de média : {{type}} </p>
            <div class="absolute right-0 bottom-0 w-full h-8 bg-gray-300 hover:bg-orange-300 text-center cursor-pointer rounded-b">
                <a href="#"><i class="mt-2 text-gray-800 uppercase text-xs">En savoir plus</i></a>
            </div>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MovieCard',
  props: {
    msg: String,
    title: String,
    year: String,
    type: String,
    poster: String,
  },
  data(){
    return{
    }
  }
}
</script>

<style>

.imgMovie {
    background-image: url({{poster}});
}

</style>