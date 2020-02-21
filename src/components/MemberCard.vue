<!-- Component de la navbar -->
<template>
  <div>
    <div id="leftContainerProfile">
        <div id="profilePicture"> 
            <img src="./../assets/styles/img/avatar/0.png" class="img-responsive" alt="">
        </div>
        <div id="leftDataMember">
            <div id="profileName">« {{pseudo}} »</div>
            <div id="profileRank"> {{rank}}</div>
        </div>
        <div id="leftDataContainer">
            <p>• Likes : 21</p>
            <p>• Dislikes : 3</p>
            <p>• Commentaires : 44</p>
        </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'MemberCard',
  props: {
    pseudo: String,
    rank: String,
    likes: String,
    dislikes: String,
    comments: String,
  },
  data(){
    return{
    }
  }
}
</script>

<style>
</style>