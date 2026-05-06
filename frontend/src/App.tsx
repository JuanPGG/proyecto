import { ThemeProvider } from 'styled-components';
import { appTheme, GlobalStyles } from './theme';
import { Prueba } from './components/atoms/Prueba';

function App() {
  return (
    <ThemeProvider theme={appTheme}>
      <GlobalStyles />
      <Prueba />
    </ThemeProvider>
  );
}

export default App;
