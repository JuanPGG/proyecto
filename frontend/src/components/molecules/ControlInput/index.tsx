import React from 'react';
import { Input } from '../../atoms/Input';
import { Label } from '../../atoms/Label';
import { ControlInputContainer } from './ControlInput.styles';

export const ControlInput = React.forwardRef(
  (
    { type, id, name, labelText, placeholder, ...restProps }: any,
    ref: React.Ref<HTMLDivElement>,
  ) => {
    return (
      <ControlInputContainer ref={ref}>
        <Input
          type={type}
          id={id}
          name={name}
          placeholder={placeholder}
          {...restProps}
        />
        <Label htmlFor={id} text={labelText} />
      </ControlInputContainer>
    );
  },
);

ControlInput.displayName = 'ControlInput';
