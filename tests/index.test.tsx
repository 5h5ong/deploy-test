import { render, screen } from "@testing-library/react";
import Component from "../components/Component";

describe("Component component", () => {
  it("TEST!", () => {
    render(<Component />);
    const isTextThere = screen.getByText(/test/i);
    expect(isTextThere.textContent).toBe("TEST! COMPONENTS!");
  });
});
