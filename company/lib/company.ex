defmodule Company do
  @moduledoc """
  Documentation for `Company`.
  """

  @doc """
  Simulated data retrieval based on company_id.
  """
  def get(_company_id) do
    underwriting_score = get_underwriting_score()

    %{
      name: "Company1",
      address: "123 4th Avenue",
      city: "Salt Lake City",
      state: "UT",
      zip: "84014",
      underwriting_score: underwriting_score
    }
  end

  defp get_underwriting_score() do
    Underwriting.get()
  end
end
