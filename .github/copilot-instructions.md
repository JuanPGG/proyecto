# Copilot Instructions

Estas instrucciones definen cómo debe generar código GitHub Copilot para este proyecto, siguiendo la arquitectura, el estilo y las reglas establecidas.

---

## 1. Contexto del Proyecto

El proyecto consiste en un sistema para la **administración de horarios en una institución educativa**, con el objetivo de:

- Agilizar la asignación y gestión de horarios.
- Visualizar de forma clara la información de instructores, salones y grupos.
- Garantizar escalabilidad, buen mantenimiento y tiempos de carga eficientes.

---

## 2. Stack Tecnológico

Copilot debe escribir y sugerir código usando siempre:

- **Next.js**
- **Node.js**
- **TypeScript**
- **Styled-components**
- **Jest + React Testing Library** (para pruebas)

No sugerir nuevas dependencias a menos que el desarrollador lo solicite explícitamente.

---

## 3. Arquitectura del Proyecto

El proyecto utiliza una combinación de:

### **Screaming Architecture**

- El proyecto está organizado por **features**, no por tipos de archivo.
- Cada feature debe tener su propia carpeta `components` con los componentes específicos de esa funcionalidad.

### **Atomic Design (solo en shared/)**

- Los componentes reutilizables y globales deben vivir en:
  ```
  shared/
    atoms/
    molecules/
    organisms/
    templates/
    types/
  ```
- Estos componentes no se deben duplicar dentro de otras features.

### **Estructura base recomendada**

```
src/
  features/
    <feature-name>/
      components/
      hooks/
      services/
      utils/
      pages/
      types/
  shared/
    atoms/
    molecules/
    organisms/
    templates/
    hooks/
    styles/
    types/
```

---

## 4. Reglas de Estilo y Convenciones

### **Componentes**

- Siempre usar **Arrow Functions**.
- No usar clases.
- Mantener el código pequeño pero entendible.
- Evitar comentarios innecesarios; solo usar si aporta contexto real.

### **Nomenclatura**

- camelCase para variables, funciones y hooks.
- PascalCase para componentes y páginas.
- Archivos de tipo: `ComponentName.types.ts`

### **Exports**

- Evitar `default exports` si es posible.
- Preferir `named exports`.

### **Props y Tipos**

- Cada componente debe tener su archivo de tipos:
  - `ComponentName.types.ts`
- Tipos reutilizables -> colocar en `shared/types`.

### **Estados, Contextos y Lógica**

- Crear un archivo `context/` por feature si se requiere.
- Extraer lógica a **custom hooks**.
- No colocar lógica compleja dentro del render de un componente.
- Evitar funciones dentro de funciones para no crear closures innecesarios.

---

## 5. Reglas de Calidad y Buenas Prácticas

Copilot debe siempre:

- **Evitar el uso de `any`**.
- Sugerir **custom hooks** para lógica reutilizable.
- Generar manejo explícito de errores (try/catch, estados de error, etc.).
- Evitar repetir lógica; sugerir abstraer en utilidades o hooks.

---

## 6. Pruebas Unitarias

- Todas las sugerencias deben incluir o considerar **tests unitarios con Jest + React Testing Library**.
- Evitar libraries adicionales para testing.
- Preferir:
  - render()
  - screen.getBy...
  - mocks claros
  - pruebas a lógica separada (hooks / utils)

---

## 7. Dependencias

- No sugerir nuevas dependencias a menos que el usuario lo pida explícitamente.
- Preferir reutilizar utilidades o componentes existentes del proyecto.

---

## 8. Lo que Copilot Debe Evitar

- Evitar funciones dentro de funciones si no es estrictamente necesario.
- Evitar lógica pesada dentro del JSX.
- No generar archivos o carpetas fuera de la arquitectura establecida.
- No generar comentarios innecesarios.
- No usar `any`.
- No usar default exports si se puede evitar.

---

## 9. Objetivos del Proyecto (para orientar decisiones de Copilot)

- **Escalabilidad**: el código debe permitir crecer fácilmente.
- **Mantenibilidad**: estructura consistente y clara.
- **Rendimiento**: evitar operaciones innecesarias y favorecer patrones eficientes.
- **Claridad visual en el UI**: componentes bien organizados bajo Atomic Design.

---

## 10. Ejemplos de buenas sugerencias (para guiar a Copilot)

### ✔ Correcto

- Crear un componente en `shared/atoms/`.
- Crear un hook dentro de `feature-app/schedules/hooks/useScheduleData.ts`.
- Utilizar un archivo `.types.ts` por componente.
- Dividir lógica compleja en un hook y dejar el UI limpio.

### ✖ Incorrecto

- Crear un componente compartido dentro de un feature.
- Sugerir dependencias externas innecesarias.
- Declarar funciones dentro del JSX.
- Usar `any`.
- Crear lógica en el render.

---

### Nota final

Estas reglas deben guiar todas las sugerencias generadas por GitHub Copilot para asegurar coherencia con la arquitectura, el estilo y la visión del proyecto.
