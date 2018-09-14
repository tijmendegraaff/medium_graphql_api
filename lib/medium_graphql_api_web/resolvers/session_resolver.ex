defmodule MediumGraphqlApiWeb.Resolvers.SessionResolver do
  alias MediumGraphqlApi.{Accounts, Guardian}

  def login_user(_, %{input: input}, _) do
    with {:ok, user} <- Accounts.Session.authenticate(input),
         {:ok, jwt_token, _} <- Guardian.encode_and_sign(user) do
      {:ok, %{token: jwt_token, user: user}}
    end
  end
end
