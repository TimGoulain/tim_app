module OffersHelper
  def offer_image(offer)
    sector_code = offer.sector.code
    if sector_code == "Hotel"
      'fa-bed'
    end
  end
end
