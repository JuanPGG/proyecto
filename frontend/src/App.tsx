import { ThemeProvider } from 'styled-components';
import { appTheme } from './components/theme/app-theme';
import { GlobalStyles } from './components/theme/global-styles';
import { Prueba } from './components/atoms/prueba/prueba';
import { Contenedor } from './components/atoms/prueba/App.styles';

function App() {
  return (
    <ThemeProvider theme={appTheme}>
      <GlobalStyles />
      <Prueba nombre="juan" color={true} />
      <Contenedor nombre="juan" />
    </ThemeProvider>
  );
}

export default App;
