<!-- Component de la navbar -->
<template>
  <div>
    <div id="leftContainerProfile" class="checkPos">
        <div id="profilePicture"> 
            <img src="./../assets/styles/img/avatar/0.png" class="img-responsive" alt="">
        </div>
        <div id="leftDataMember">
            <div id="profileName">« {{pseudo}} »</div>
            <div id="profileRank"> {{rank}}</div>
        </div>
        <div id="leftDataContainer">
          <router-link :to="{ name: 'profile', params: { value } }">
            <button class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">Voir le profil</button>
          </router-link>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MemberBloc',
  props: {
    pseudo: String,
    rank: String,
  },
  data(){
    return{
      value:this.pseudo
    }
  }
}
</script>

<style>
.checkPos {
  margin-right:50px;
}
</style>