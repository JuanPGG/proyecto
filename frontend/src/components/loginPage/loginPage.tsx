import { IoIosEye } from 'react-icons/io';

function Login() {
  const Eyeicon = IoIosEye as React.ElementType;
  return (
    <div className="login-container">
      <h1>Inicio de Sesión</h1>
      <form>
        <div className="username-container">
          <label htmlFor="username">Usuario:</label>
          <input type="text" id="username" name="username" />
        </div>
        <div className="password-container">
          <label htmlFor="password">Contraseña</label>
          <input type="password" id="password" name="password" />
          <Eyeicon className="eye-icon" />
        </div>
      </form>
      <button type="submit">Iniciar Sesión</button>
    </div>
  );
}

export default Login;
