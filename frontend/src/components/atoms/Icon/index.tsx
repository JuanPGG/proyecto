import type { ReactNode } from 'react';
import * as LocalIcons from './svgs/index';
import LibraryIcons from './lib';

type LocalIconDefinition = {
  name: string;
  viewBox: number;
  content: ReactNode;
};

type IconProps = {
  name: string;
  size?: number;
  color?: string;
  [key: string]: any;
};

export function Icon({ name, size = 20, color, ...rest }: IconProps) {
  const Local = (LocalIcons as Record<string, LocalIconDefinition>)[name];
  if (Local) {
    const boxSize = Local.viewBox || size;
    return (
      <svg
        xmlns="http://www.w3.org/2000/svg"
        viewBox={`0 0 ${boxSize} ${boxSize}`}
        width={size}
        height={size}
        fill={color ?? 'currentColor'}
        {...rest}
      >
        {Local.content}
      </svg>
    );
  }
  const IconComponent = (LibraryIcons as any)[name];
  if (IconComponent) {
    return <IconComponent size={size} color={color} {...rest} />;
  }

  // eslint-disable-next-line no-console
  console.warn(`[Icon] Icon not found: ${name}`);

  return null;
}
