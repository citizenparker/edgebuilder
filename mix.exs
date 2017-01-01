defmodule EdgeBuilder.Mixfile do
  use Mix.Project

  def project do
    [app: :edge_builder,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"] ++ elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {EdgeBuilder, []},
     applications: [:phoenix, :cowboy, :logger, :postgrex, :ecto, :httpoison, :phoenix_ecto, :phoenix_html]]
  end

  defp elixirc_paths(:test), do: ["test/support"]
  defp elixirc_paths(_),     do: []

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.14.0"},
     {:phoenix_ecto, "~> 0.4"},
     {:phoenix_html, "~> 1.1"},
     {:cowboy, "~> 1.0"},
     {:postgrex, "~> 0.6"},
     {:ecto, "~> 0.11"},
     {:scrivener, "~> 0.6"},
     {:comeonin, "~> 0.8"},
     {:httpoison, "~> 0.8"},
     {:inflex, "~> 1.0.0" },
     {:mock, "~> 0.1", only: :test},
     {:floki, "~> 0.1", only: :test},
     {:ex_spec, "~> 0.3", only: :test}
   ]
  end
end
