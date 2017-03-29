require 'open-uri'
require 'nokogiri'

module Services
  class Scrapper
    class << self

      def scrap(url)
        file = open(url)
        doc = Nokogiri::HTML(file)
        data = {}
        data[:price] = doc.search('.price').first.text.split(' € ')[0].to_i * 100
        data[:name] = doc.search('.title-page').first.text
        data[:description] = doc.search('.desc').text
        tech_hash = doc.search(name="th").map { |e| e.text }.zip(doc.search(name="td").map { |e| e.text }).to_h
        # data[:volume] =
        # data[:length] =
        # data[:width] =
        data[:weight] = tech_hash['Produit emballé : poids (en kg)'] if tech_hash.has_key?('Produit emballé : poids (en kg)')
        data[:photo_url] = doc.search('#img-01').attribute('src').value

        return data
      end
    end
  end
end
