import { Input } from '../../atoms/Input';
import { Label } from '../../atoms/Label';
import { ControlInputContainer } from './ControlInput.styles';

export function ControlInput({ type, id, name, labelText, ...restProps }: any) {
  return (
    <ControlInputContainer>
      <Label text={labelText} />
      <Input type={type} id={id} name={name} {...restProps} />
    </ControlInputContainer>
  );
}
