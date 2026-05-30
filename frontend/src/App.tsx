import { ThemeProvider } from 'styled-components';
import { appTheme } from './theme/app-theme';
import { GlobalStyles } from './theme/global-styles';
import { Login } from './components/Pages/Login';

function App() {
  return (
    <ThemeProvider theme={appTheme}>
      <GlobalStyles />
      <Login />
    </ThemeProvider>
  );
}

export default App;
