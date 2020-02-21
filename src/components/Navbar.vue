<!-- Component de la navbar -->
<template>
  <div>
    <nav class="site-nav">
        <div class="menu-toggle">
            <div class="hamburger" onclick="openNav()"></div>

            <div id="myNav" class="overlayNav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <div class="overlayNav-content ">
                    <router-link to="/">Accueil</router-link>
                    <li><router-link to="/members">Membres du site</router-link></li>
                </div>
            </div>
        </div>
    
        <div class="menu-toggle-user">
            <div class="profile-userpicMenu">
                <img src="http://deadpool.byethost11.com/html/template/images/design/userMenu.png" class="img-responsive" alt="" width="50px" height="50px"  onclick="openUI()">
            </div>
                
            <div id="myUI" class="overlay">
                <a href="javascript:void(0)" class="closebtn" onclick="closeUI()">&times;</a>

                <div class="overlay-content">
                    <form id ="loginMobile" action="login.php" method="post" autocomplete="off">
                    
                    <h3>CONNEXION</h3><br/>
                    <fieldset>
                        <input type="text" id="pseudo" name="pseudo" placeholder="Votre pseudo ..." tabindex="1" required autocomplete="off">
                    </fieldset>
                    
                    <fieldset>
                        <input type="password" id="password" name="password" placeholder="Votre mot de passe ..." tabindex="2" required autocomplete="off">
                    </fieldset>
                    
                    <fieldset>
                        <button name="submit" type="submit" id="contact-submit" class="buttonPostComm" data-submit="...Envoi en cours">Se connecter</button>
                    </fieldset>
                    
                    </form>
                    <a href="register.php">Pas encore inscrit ? S\'inscrire !</a>
                </div>
            </div>
        </div>

        <ul class="open desktop">
            <li><router-link to="/">Accueil</router-link></li>
            <li><router-link to="/members">Membres du site</router-link></li>
            <li><router-link to="/projects">Portfolio</router-link></li>

        </ul>
    </nav>
  </div>
</template>

<script>
export default {
  name: 'Navbar',
  props: {
    msg: String
  },
  data(){
    return{
    }
  }
}
</script>

<style>
</style>