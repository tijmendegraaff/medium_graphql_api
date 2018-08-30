defmodule MediumGraphqlApiWeb.Router do
  use MediumGraphqlApiWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphql", Absinthe.Plug, schema: MediumGraphqlApiWeb.Schema)

    if Mix.env() == :dev do
      forward("/graphiql", Absinthe.Plug.GraphiQL, schema: MediumGraphqlApiWeb.Schema)
    end
  end
end
