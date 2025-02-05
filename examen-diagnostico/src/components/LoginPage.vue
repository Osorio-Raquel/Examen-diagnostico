<template>
  <div class="container">
    <transition name="fade" appear>
      <div v-if="showIntro" class="intro">
        <img src="https://i0.wp.com/lpz.ucb.edu.bo/wp-content/uploads/2024/05/UCB-Ereccion-Canonica_Escudo-01.png?resize=1080%2C1450&ssl=1" class="logo" alt="UCB Logo" />
        <h1 class="ucb-name">{{ typedUCB }}</h1>
        <h2 class="full-name">{{ typedFullName }}</h2>
      </div>
    </transition>

    <transition name="scale-fade" appear>
      <div v-if="showLogin" class="login">
        <v-card class="login-card">
          <v-card-title class="text-center">Iniciar Sesión</v-card-title>
          <v-card-text>
            <v-text-field v-model="username" label="Usuario" outlined></v-text-field>
            <v-text-field v-model="password" label="Contraseña" outlined type="password"></v-text-field>
            <v-btn color="primary" block @click="login">Ingresar</v-btn>
            <v-alert v-if="loginFailed" type="error" class="mt-4">Usuario o contraseña incorrectos.</v-alert>
          </v-card-text>
        </v-card>
      </div>
    </transition>
  </div>
</template>


<script>
import gsap from "gsap";

export default {
  data() {
    return {
      showIntro: true,
      showLogin: false,
      typedUCB: "",
      typedFullName: "",
      ucbText: "UCB",
      fullNameText: "Universidad Católica Boliviana.",
      username: '',
      password: '',
      loginFailed: false
    };
  },
  mounted() {
    this.animateIntro();
  },
  methods: {
    async animateIntro() {
      gsap.from(".logo", { opacity: 0, scale: 0.8, duration: 1.5, ease: "power4.out" });
      await this.typeText("ucbText", "typedUCB", 150);
      gsap.to(".ucb-name", { textShadow: "0px 0px 0px #ffd700", duration: 0.8 });
      await new Promise((resolve) => setTimeout(resolve, 500));
      await this.typeText("fullNameText", "typedFullName", 100);
      setTimeout(() => {
        gsap.to(".intro", {
          opacity: 0,
          scale: 0.9,
          duration: 1.5,
          ease: "power3.inOut",
          onComplete: () => {
            this.showIntro = false;
            this.showLogin = true;
          },
        });
      }, 2000);
    },
    async typeText(sourceKey, targetKey, delay) {
      for (let i = 0; i < this[sourceKey].length; i++) {
        this[targetKey] += this[sourceKey][i];
        await new Promise((resolve) => setTimeout(resolve, delay));
      }
    },
    login() {
      if (this.username === 'admin' && this.password === 'admin') {
        this.loginFailed = false;
        this.transitionToRegisterPage();
      } else {
        this.loginFailed = true;
      }
    },
    transitionToRegisterPage() {
      gsap.to(".login-card", {
        opacity: 0,
        scale: 0.9,
        duration: 1.5,
        ease: "power3.inOut",
        onComplete: () => {
          this.$router.push("/register"); 
        },
      });
    }
  }
};
</script>

<style>
/* 🔹 Fuentes generales */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&family=Lora:wght@400;500&display=swap');

html, body {
  margin: 0;
  padding: 0;
  height: 100%;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: #f0f0f0;
  overflow: hidden; 
}

.container {
  width: 100vw;
  height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  position: absolute; 
  top: 0;
  left: 0;
}

.v-alert {
  font-size: 14px;
}

.intro {
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%); 
  height: 100%;
}

/* 🔹 Logo */
.logo {
  width: 30vw;  
  max-width: 200px;  
  margin-bottom: 10px;
}

.ucb-name {
  font-size: 5vw; 
  font-family: 'Poppins', sans-serif;  
  font-weight: 800; 
  background: linear-gradient(to right, #1e3c72 0%, #00aaff 40%, #ffc107 100%); 
  -webkit-background-clip: text; 
  color: transparent;  
  margin: 0;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
  transition: transform 0.3s ease, text-shadow 0.3s ease;
}

.ucb-name:hover {
  transform: scale(1.1); 
  text-shadow: 4px 4px 10px rgba(0, 0, 0, 0.6);
}


.full-name {
  font-size: 3vw; 
  color: #37474f;
  margin: 0;
}

.login {
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 100%;
  height: 100%;
}

.v-card.login-card {
  width: 100%;
  max-width: 420px; 
  padding: 30px;
  border-radius: 20px;
  background: linear-gradient(45deg, #1e3c72, #00aaff, #ffc107); 
  background-size: 400% 400%;
  box-shadow: 0px 6px 20px rgba(0, 0, 0, 0.1); 
  animation: gradientAnimation 5s ease infinite; 
  transition: transform 0.3s ease, box-shadow 0.3s ease; 
  font-family: 'Poppins', sans-serif; 
}

@keyframes gradientAnimation {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}

.v-card.login-card:hover {
  transform: scale(1.03); 
  box-shadow: 0px 6px 25px rgba(0, 0, 0, 0.15);
}

.v-card__title {
  font-family: 'Poppins', sans-serif !important; 
  font-weight: 600 !important;
  font-size: 26px !important; 
  color: #fff !important;
  margin-bottom: 20px;
  text-align: center; 
  text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2); 
}

.v-card__text {
  font-family: 'Lora', serif !important; 
  font-size: 16px !important; 
  color: #fff !important; 
  line-height: 1.6; 
  margin-bottom: 30px; 
  text-align: center; 
}

.description {
  font-family: 'Lora', serif;
  font-size: 14px;
  color: #fff;
  margin-top: 10px;
  text-align: left;
  line-height: 1.6;
  padding-left: 5px;
}

.v-text-field {
  background-color: #ffffff !important; 
  border-radius: 12px !important; 
  border: 2px solid #fff !important;
  margin-bottom: 20px; 
  padding: 12px 18px; 
  font-size: 16px !important;
  transition: all 0.3s ease; 
}

.v-text-field--is-focused {
  box-shadow: 0px 4px 10px rgba(255, 255, 255, 0.5) !important; 
  border: 2px solid #ffc107 !important; 
}

.v-btn {
  background-color: #00aaff !important; 
  color: white !important;  
  border-radius: 30px !important;
  padding: 14px 30px !important;  
  font-weight: 600 !important; 
  font-size: 16px !important; 
  transition: all 0.3s ease; 
  letter-spacing: 1px;
}

.v-btn:hover {
  background-color: #ffc107 !important; 
  box-shadow: 0px 6px 15px rgba(0, 0, 0, 0.1) !important; 
}

.v-card__actions {
  margin-top: 20px;
  text-align: center; 
}

.v-card__actions .v-btn {
  background-color: #f0f0f0 !important;
  color: #555 !important;
  margin-top: 10px;
  padding: 10px 20px;
  font-weight: 500;
  border-radius: 25px;
}

</style>
