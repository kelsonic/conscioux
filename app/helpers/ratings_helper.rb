module RatingsHelper

	def generate_stars(rating)
    rating = rating.round
		assign_stars(rating).html_safe
	end

  private

    def assign_stars(rating)
      if rating < 1
        ''

      elsif rating === 1
        "&#9734;"

      elsif rating === 2
        "&#9734; " * 2

      elsif rating === 3
        "&#9734; " * 3

      elsif rating === 4
        "&#9734; " * 4

      elsif rating >= 5
        "&#9734; " * 5

      else
        "N/A"
      end
    end
	
end