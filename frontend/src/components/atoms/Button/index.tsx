import { StyledButton } from './button.styles';

export function Button({ type, text }: any) {
  return <StyledButton type={type}>{text}</StyledButton>;
}
