import styled from 'styled-components';

export const StyledLabel = styled.label`
  position: absolute;
  left: 35px;
  top: 50%;
  transform: translateY(-50%);
  transition: all 0.3s ease;
  pointer-events: none;
  font-size: 16px;
  color: #ffffff;

  /* display: block; // ocupa toda la linea, no permite que otros elementos estén a su lado
  display: inline-block; // se comporta como block pero permite que otros elementos estén a su lado
  display: inline; // ocupa solo el espacio necesario */
`;
