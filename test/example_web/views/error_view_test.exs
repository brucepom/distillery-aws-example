defmodule ExampleWeb.ErrorViewTest do
  use ExampleWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "make me fail" do
    assert "make me fail" == 1
  end

  test "renders 404.json" do
    assert render(ExampleWeb.ErrorView, "404.json", []) ==
           %{errors: %{detail: "Not Found"}}
  end

  test "renders 500.json" do
    assert render(ExampleWeb.ErrorView, "500.json", []) ==
           %{errors: %{detail: "Internal Server Error"}}
  end
end
