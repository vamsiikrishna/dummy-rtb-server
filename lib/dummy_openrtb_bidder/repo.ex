defmodule DummyOpenrtbBidder.Repo do
  use Ecto.Repo,
    otp_app: :dummy_openrtb_bidder,
    adapter: Ecto.Adapters.Postgres
end
