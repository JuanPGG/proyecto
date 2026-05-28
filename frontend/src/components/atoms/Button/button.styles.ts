import styled from 'styled-components';

export const StyledButton = styled.button`
  outline: none;
  border: none;
  border-radius: 8px;
  padding: 6px 12px;
  cursor: pointer;
  border: 2px solid ${props => props.theme.colors.white};
  background-color: transparent;
  color: ${props => props.theme.colors.white};
  font-size: 16px;

  &:hover {
    background-color: #ffffff70;
    color: ${props => props.theme.colors.white};
    font-weight: bold;
  }
`;
