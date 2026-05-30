import styled from 'styled-components';

export const LoginContainer = styled.div`
  border: 1px solid #ccc;
  border-radius: 12px;
  padding: 20px;
  width: 400px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  background-color: ${props => props.theme.colors.white};
  display: flex;
  flex-direction: column;
  align-items: center;
  row-gap: 20px;
`;

export const StyledForm = styled.form`
  width: 85%;
  display: flex;
  flex-direction: column;
  row-gap: 15px;
`;

export const Title = styled.h1`
  color: ${props => props.theme.colors.primary};
`;
