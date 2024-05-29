import { ThemeProvider } from 'styled-components';
import { appTheme } from './components/theme/app-theme';
import { GlobalStyles } from './components/theme/global-styles';

function App() {
  return (
    <ThemeProvider theme={appTheme}>
      <GlobalStyles />
      <h1>Hola Mundo</h1>
    </ThemeProvider>
  );
}

export default App;
