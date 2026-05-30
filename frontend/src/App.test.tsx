import { describe, it, expect } from "vitest";
import { render, screen } from "@testing-library/react";
import App from "./App";

describe("App", () => {
  it("renderiza el texto Hola Mundo", () => {
    render(<App />);

    const heading = screen.getByText(/hola mundo/i);
    expect(heading).toBeInTheDocument();
  });
});
