defmodule MediumGraphqlApiWeb.Resolvers.PostResolver do
  alias MediumGraphqlApi.Blog

  def create_post(_, %{input: input}, %{context: %{current_user: current_user}}) do
    post_input = Map.merge(input, %{user_id: current_user.id})
    Blog.create_post(post_input)
  end
end
