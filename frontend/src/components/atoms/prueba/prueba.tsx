import { Container, Titulo } from './prueba.styles';
import type { Persona } from './prueba.types';

export const Prueba = ({ nombre, apellido, color, ...restProps }: Persona) => {
  return (
    <Container {...restProps}>
      <Titulo $isRed={color}>
        Bienvenido, {nombre} {apellido}
      </Titulo>
    </Container>
  );
};
