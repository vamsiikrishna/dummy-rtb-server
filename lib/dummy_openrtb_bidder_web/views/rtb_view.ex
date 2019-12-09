defmodule DummyOpenrtbBidderWeb.RtbView do
  use DummyOpenrtbBidderWeb, :view

  def render("valid.json", %{val: val}) do
    val
  end

  def render("invalid.json", %{val: val}) do
    val
  end

  def render("valid_response.json", %{val: val}) do
    %{
      id: val.id,
      seatbid: [%{
          bid: [%{
              id: "bid1",
              impid: val.imp_id,
              price: val.price,
              adm: val.adm,
              adomain: [
                  val.adomain
              ],
              nurl: val.nurl
          }]
      }]
  }
  end

end
