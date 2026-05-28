import { useForm } from 'react-hook-form';
import { IoIosPerson } from 'react-icons/io';
import { TbLockPassword } from 'react-icons/tb';
import { CiUser } from 'react-icons/ci';
import { ControlInput } from '../../molecules/ControlInput';
import { Button } from '../../atoms/Button';
import { LoginContainer, StyledForm } from './loginCard.styles';
import { InputContainer, StyledIcon } from '../../atoms/Input/input.styles';
import { IoEyeSharp } from 'react-icons/io5';
import React from 'react';
import { ErrorMessage } from '../../atoms/Input/input.styles';

function LoginCard() {
  const Icon = IoIosPerson as any;
  const IconUser = CiUser as any;
  const IconPass = TbLockPassword as any;
  const IconEye = IoEyeSharp as any;

  const [showPassword, setShowPassword] = React.useState(false);

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm({
    mode: 'onChange',
  });

  const onSubmit = (data: any) => {
    // eslint-disable-next-line no-console
    console.log(data);
  };

  return (
    <LoginContainer>
      <Icon size={180} color="#ffffff70" style={{ marginBottom: '20px' }} />
      <StyledForm onSubmit={handleSubmit(onSubmit)}>
        <InputContainer>
          <StyledIcon>{<IconUser size={20} color="#ffffff" />}</StyledIcon>
          <ControlInput
            type="text"
            id="username"
            placeholder=" "
            labelText="Usuario"
            {...register('username', {
              required: 'El campo de usuario es obligatorio',
              pattern: {
                value: /^[^\s@]+@[^\s@]+\.[^\s@]+$/,
                message: 'Por favor, ingresa un correo electrónico válido',
              },
            })}
          />
          {errors.username && (
            <ErrorMessage>{errors.username.message as string}</ErrorMessage>
          )}
        </InputContainer>
        <InputContainer>
          <StyledIcon>{<IconPass size={20} color="#ffffff" />}</StyledIcon>
          <ControlInput
            type={showPassword ? 'text' : 'password'}
            id="password"
            placeholder=" "
            labelText="Contraseña"
            {...register('password', {
              required: 'El campo de contraseña es obligatorio',
            })}
          />
          <StyledIcon style={{ right: '0', left: 'auto' }}>
            {
              <IconEye
                size={20}
                color="#ffffff"
                cursor="pointer"
                onClick={() => setShowPassword(!showPassword)}
              />
            }
          </StyledIcon>
          {errors.password && (
            <ErrorMessage>{errors.password.message as string}</ErrorMessage>
          )}
        </InputContainer>
        <Button type="submit" text="Iniciar Sesión" />
      </StyledForm>
    </LoginContainer>
  );
}

export default LoginCard;
