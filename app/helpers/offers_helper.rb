module OffersHelper
  def offer_image(offer)
    sector_code = offer.sector.code
    if sector_code == "Hotel"
      'fa-star'
    elsif sector_code == "Bar"
      'fa-beer'
    elsif sector_code == "Farming"
      'fa-tree'
    elsif sector_code == "Volunteering"
      'fa-thumbs-o-up'
    elsif sector_code == "NGOs"
      'fa-globe'
    elsif sector_code == "Events"
      'fa-calendar-check-o'
    elsif sector_code == "Sales"
      'fa-usd'
    elsif sector_code == "Babysitting"
      'fa-gamepad'
    elsif sector_code == "Au-pair"
      'fa-home'
    elsif sector_code == "Maid"
      'fa-bed'
    elsif sector_code == "Restaurant"
      'fa-cutlery'
    elsif sector_code == "Coffee"
      'fa-coffee'
    elsif sector_code == "Jet fighting"
      'fa-fighter-jet'
    elsif sector_code == "Construction"
      'fa-building-o'
    elsif sector_code == "Other"
      'fa-fa-odnoklassniki'
    end
  end
end
