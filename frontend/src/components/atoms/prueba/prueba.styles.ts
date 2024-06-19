import styled from 'styled-components';

export const Container = styled.div`
  padding: 100px;
`;

export const Titulo = styled.h2<{ $isRed?: boolean }>`
  color: ${props =>
    props.$isRed ? props.theme.colors.red : props.theme.colors.black};
`;
