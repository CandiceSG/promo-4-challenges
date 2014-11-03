# require 'nokogiri'
# doc = Nokogiri::HTML(File.open('marmiton.html'))

# doc.search('.m_search_result').each do |element|
#   puts "#{element.search('.m_search_titre_recette > a').inner_text}"
#   puts "Rating : #{element.search('.etoile1').size} / 5}"
# end

require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(File.open('marmiton.html'), nil, 'utf-8')

doc.css('.m_contenu_resultat').each do |element|
  puts element.search('.m_titre_resultat > a').inner_text
  puts "#{element.search('.m_texte_resultat').inner_text[0..150]}"
  puts "Rating : #{element.search('.m_recette_note1').size} / 5"
  puts "Prep Time : #{element.search('.m_detail_time div:first-child').inner_text}"
  puts "Cook Time : #{element.search('.m_detail_time div:nth-child(2)').inner_text}"

end


# response = open('http://www.marmiton.org/recettes/recherche.aspx?aqt=fraise')
# puts response.inspect