defmodule NeoDGM.Mixfile do
  use Mix.Project

  @neodgm_version "1.5.0"

  def project do
    [
      app: :neodgm,
      version: @neodgm_version,
      elixir: "~> 1.9",
      deps: deps()
    ]
  end

  defp deps do
    []
  end
end
