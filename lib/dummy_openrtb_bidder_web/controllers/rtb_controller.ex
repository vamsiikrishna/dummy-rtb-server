defmodule DummyOpenrtbBidderWeb.RtbController do

  use DummyOpenrtbBidderWeb, :controller
  alias OpenRtbEcto.V2.BidRequest
  alias OpenRtbEcto.V2.BidResponse

  def validate(conn, params) do
    case OpenRtbEcto.cast(BidRequest, params) do
      {:ok, _rtb_request} ->
        val = %{"valid" => true}
        render conn, "valid.json", val: val
      {:error, message} ->
         val = %{"valid" => false, "errors" => message}
         render conn, "invalid.json", val: val
    end
  end

  def respond(conn, params) do

    case OpenRtbEcto.cast(BidRequest, params) do
      {:ok, rtb_request} ->
        id = rtb_request.id
        site_id = rtb_request.site.id
        imp0 = rtb_request.imp |> List.first
        imp0_id = imp0.id
        width = imp0.banner.w
        height = imp0.banner.h
        imp = {id,site_id,width,height}
        price = :rand.uniform() |> Float.ceil(5)

        val = %{
          id: id,
          site_id: rtb_request.site.id,
          imp_id: imp0_id,
          price: price,
          adm: "<a href=\"https://automatad.com\" target=\"_blank\"><img src=\"http://cdn.automatad.com/demo/AdFormats_300x250.png\"></a>",
          adomain: "https://automatad.com",
          nurl: "http://ortb.automatad.com/winnotice?impid={AUCTION_IMP_ID}&auction=${AUCTION_ID}&price=${AUCTION_PRICE}&bidid=${AUCTON_BID_ID}&bidcur=${AUCTION_CURRENCY}",
        }
        render conn, "valid_response.json", val: val
      {:error, message} ->
         val = %{"valid" => false, "errors" => message}
         render conn, "invalid.json", val: val
    end
  end
end
