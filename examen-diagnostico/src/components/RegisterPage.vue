<template>
  <div class="registro-container">
    <h1>Registro de Estudiantes</h1>
    
    <div class="form-section">
      <h2>Datos Personales</h2>
      <form @submit.prevent="submitForm">
        <div class="form-group">
          <label for="nombre">Nombre</label>
          <input type="text" v-model="student.nombre" id="nombre" required />
        </div>
        
        <div class="form-group">
          <label for="carnet">Carnet de Identidad</label>
          <input type="text" v-model="student.carnet" id="carnet" required />
        </div>
        
        <div class="form-group">
          <label for="apellido">Apellido</label>
          <input type="text" v-model="student.apellido" id="apellido" required />
        </div>
        
        <div class="form-group">
          <label for="segundoApellido">Segundo Apellido</label>
          <input type="text" v-model="student.segundoApellido" id="segundoApellido" required />
        </div>

        <div class="form-group">
          <label for="cumpleanos">Cumpleaños</label>
          <input type="date" v-model="student.cumpleanos" id="cumpleanos" required />
        </div>

        <div class="form-group">
          <label for="direccion">Dirección</label>
          <input type="text" v-model="student.direccion" id="direccion" required />
        </div>

        <div class="form-group">
          <label for="phone">Número de Teléfono</label>
          <input type="tel" v-model="student.phone" id="phone" required />
        </div>

        <div class="form-group">
          <label for="email">Correo Electrónico</label>
          <input type="email" v-model="student.email" id="email" required />
        </div>

        <div class="form-group">
          <label for="campus">Campus</label>
          <select v-model="student.campus" id="campus" required>
            <option v-for="option in campuses" :key="option" :value="option">{{ option }}</option>
          </select>
        </div>

        <div class="form-group">
          <label for="genero">Género</label>
          <select v-model="student.genero" id="genero" required>
            <option value="Masculino">Masculino</option>
            <option value="Femenino">Femenino</option>
            <option value="Otro">Otro</option>
          </select>
        </div>

        <div class="form-group">
          <label for="carrera">Carrera</label>
          <select v-model="student.carrera" id="carrera" required>
            <option v-for="option in carreras" :key="option" :value="option">{{ option }}</option>
          </select>
        </div>

        <div class="form-group">
          <label for="antigen">Grupo Sanguíneo</label>
          <select v-model="student.antigen" id="antigen" required>
            <option value="A">A</option>
            <option value="O">O</option>
            <option value="B">B</option>
            <option value="AB">AB</option>
          </select>
        </div>

        <div class="form-group">
          <label for="rhFactor">Factor Rh</label>
          <select v-model="student.rhFactor" id="rhFactor" required>
            <option value="+">Positivo (+)</option>
            <option value="-">Negativo (-)</option>
          </select>
        </div>
      </form>
    </div>

    <div class="form-section">
      <h2>Datos de Graduación</h2>
      <div class="form-group">
        <label for="escuela">Nombre de la Escuela</label>
        <input type="text" v-model="student.escuela" id="escuela" required />
      </div>

      <div class="form-group">
        <label for="anoGraduacion">Año de Graduación</label>
        <input type="number" v-model="student.anoGraduacion" id="anoGraduacion" required />
      </div>

      <div class="form-group">
        <label for="turno">Turno de la Escuela</label>
        <select v-model="student.turno" id="turno" required>
          <option value="Mañana">Mañana</option>
          <option value="Tarde">Tarde</option>
          <option value="Noche">Noche</option>
        </select>
      </div>

      <div class="form-group">
        <label for="tipo">Tipo la Escuela</label>
        <select v-model="student.tipo" id="tipo" required>
          <option value="Privada">Privada</option>
          <option value="Fiscal">Fiscal</option>
          <option value="Convenio">Convenio</option>
        </select>
      </div>
    </div>

    <button @click="submitForm" class="submit-btn">Registrar</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      student: {
        nombre: '',
        carnet: '',
        apellido: '',
        segundoApellido: '',
        cumpleanos: '',
        direccion: '',
        phone: '',
        email: '',
        campus: '',
        genero: '',
        carrera: '',
        bloodType: '',
        escuela: '',
        anoGraduacion: '',
        turno: '',
        tipo: ''
      },
      campuses: ['Campus A', 'Campus B', 'Campus C'],
      carreras: ['Ingeniería', 'Medicina', 'Derecho', 'Arquitectura']
    };
  },
  methods: {
    submitForm() {
      console.log(this.student);
      alert('Registro Exitoso!');
    }
  }
};
</script>

<style scoped>
.registro-container {
  background: #e8f1f9;
  color: #333;
  font-family: 'Poppins', sans-serif;
  padding: 40px;
  border-radius: 12px;
  max-width: 900px;
  margin: 50px auto;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  animation: fadeIn 1s ease-out;
  overflow-y: auto;
  height: 85vh;
}

h1 {
  text-align: center;
  font-size: 2.8em;
  margin-bottom: 20px;
  color: #0056b3;
}

.form-section {
  margin-bottom: 30px;
  padding: 20px;
  background-color: white;
  border-radius: 10px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
  animation: fadeInUp 0.8s ease-out;
}

h2 {
  font-size: 2em;
  margin-top: 20px;
  color: #0056b3;
  text-decoration: underline;
}

.form-group {
  margin-bottom: 20px;
}

label {
  display: block;
  font-weight: 600;
  margin-bottom: 8px;
  color: #0056b3;
}

input, select {
  width: 100%;
  padding: 12px;
  margin-top: 5px;
  font-size: 1.1em;
  border-radius: 8px;
  border: 1px solid #ccc;
  transition: all 0.3s;
  box-sizing: border-box;
}

input:focus, select:focus {
  border-color: #0056b3;
  outline: none;
}

/* Botón estilizado */
button.submit-btn {
  width: 100%;
  padding: 15px;
  background-color: #ffc107;
  border: none;
  border-radius: 10px;
  font-size: 1.3em;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out;
}

button.submit-btn:hover {
  background-color: #ff9800;
}

/* Animaciones */
@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}
</style>
