defmodule MediumGraphqlApiWeb.Schema.Types.CommentType do
  use Absinthe.Schema.Notation
  use Absinthe.Ecto, repo: MediumGraphqlApi.Repo

  object :comment_type do
    field(:id, :id)
    field(:content, :string)
    field(:user, :user_type, resolve: assoc(:user))
    field(:post, :post_type, resolve: assoc(:post))
  end

  input_object :comment_input_type do
    field(:content, non_null(:string))
    field(:post_id, non_null(:id))
  end
end
