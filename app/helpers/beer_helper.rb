module BeerHelper

  def show_beerimage(beer)
    if beer.beer_image.attached?
      image_tag beer.beer_image.variant(resize:'300x300'), {class: "beer-icon"}
    else
      image_tag "default_beer", {class: "beer-icon", size: "300x300"}
    end
  end
end
