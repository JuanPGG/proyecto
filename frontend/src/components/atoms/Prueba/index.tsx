import { useEffect, useState } from 'react';

export const Prueba = () => {
  const [persona, setPersona] = useState({
    nombre: 'Juan',
    apellido: 'Guevara',
  });
  const [nombre, setNombre] = useState('Juan');
  const [counter, setCounter] = useState(0);

  function countNumber() {
    setCounter(prev => {
      const newValue = prev + 1;

      if (newValue === 4) {
        setNombre('Shara');
      }

      return newValue;
    });
  }

  useEffect(() => {
    function initialData() {
      setPersona({
        nombre: nombre,
        apellido: 'Goez',
      });
    }

    initialData();
  }, [nombre]);

  return (
    <div>
      <h1>Hola {persona.nombre}</h1>
      <p>Count: {counter}</p>
      <button onClick={countNumber}>Presionar</button>
    </div>
  );
};
