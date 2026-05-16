import { StyledInput } from './input.styles';

export function Input({ type, id, name, ...restProps }: any) {
  return <StyledInput {...restProps} type={type} id={id} name={name} />;
}
