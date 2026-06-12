import 'styled-components';
import { appTheme } from './app-theme';

type AppTheme = typeof appTheme;

declare module 'styled-components' {
  export interface DefaultTheme extends AppTheme {}
}
