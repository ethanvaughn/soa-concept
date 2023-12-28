# Company

To test the functionaliy where the Company.get("id") function calls into the Underwriting app to get the score, do the following: 

```
cd underwriting
mix compile
cd ../company
mix compile

# While in the company folder:

iex -S mix
iex(1)> Application.ensure_all_started(:underwriting)
{:ok, []}
Company.get("id")
%{
  name: "Company1",
  state: "UT",
  zip: "84014",
  address: "123 4th Avenue",
  city: "Salt Lake City",
  underwriting_score: %{score: "450"}
}
```

