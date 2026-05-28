import React from 'react';
import { StyledInput } from './input.styles';

export const Input = React.forwardRef(
  ({ type, id, name, ...restProps }: any, ref: React.Ref<HTMLInputElement>) => {
    return (
      <StyledInput ref={ref} {...restProps} type={type} id={id} name={name} />
    );
  },
);

Input.displayName = 'Input';
