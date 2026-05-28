import styled from 'styled-components';
import { StyledLabel } from '../Label/label.style';

interface InputContainerProps {
  hasError?: boolean;
}

export const InputContainer = styled.div<InputContainerProps>`
  position: relative;
  width: 100%;
  margin-bottom: ${(props: InputContainerProps) =>
    props.hasError ? '40px' : '20px'};
  transition: margin-bottom 0.3s ease;
`;

export const StyledInput = styled.input`
  outline: none;
  border: none;
  border-bottom: 3px solid #ffffff;
  //border-radius: 4px;
  width: 100%;
  height: 32px;
  background-color: #ffffff00;
  padding: 4px 8px 4px 35px;
  color: #ffffff;

  &:focus ~ ${StyledLabel}, &:not(:placeholder-shown) ~ ${StyledLabel} {
    top: -10px;
    transform: translateY(0) scale(0.85);
    transform-origin: left;
    font-size: 12px;
    color: #ffffff;
  }
`;

export const StyledIcon = styled.div`
  position: absolute;
  left: 0px;
  top: 50%;
  transform: translateY(-50%);
  display: flex;
  align-items: center;
  width: 32px;
  height: 100%;
  font-size: 20px;
  color: #ffffff;
`;

export const ErrorMessage = styled.p`
  color: #ff4d4d;
  font-size: 12px;
  position: absolute;
  bottom: -20px;
  left: 35px;
  margin: 0;
`;
