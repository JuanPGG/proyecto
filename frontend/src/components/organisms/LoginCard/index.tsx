// import { IoIosEye } from 'react-icons/io';
import { ControlInput } from '../../molecules/ControlInput';
import { Button } from '../../atoms/Button';
import { LoginContainer, StyledForm, Title } from './loginCard.styles';

function LoginCard() {
  // const Eyeicon = IoIosEye as React.ElementType;
  return (
    <LoginContainer>
      <Title>Inicio de Sesión</Title>
      <StyledForm>
        <ControlInput
          type="text"
          id="username"
          name="username"
          labelText="Usuario"
        />
        <ControlInput
          type="password"
          id="password"
          name="password"
          labelText="Contraseña"
        />
      </StyledForm>
      <Button type="submit" text="Iniciar Sesión" />
    </LoginContainer>
  );
}

export default LoginCard;
