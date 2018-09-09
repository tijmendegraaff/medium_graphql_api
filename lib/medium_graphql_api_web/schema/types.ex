defmodule MediumGraphqlApiWeb.Schema.Types do
  use Absinthe.Schema.Notation

  alias MediumGraphqlApiWeb.Schema.Types

  import_types(Types.Usertype)
end
