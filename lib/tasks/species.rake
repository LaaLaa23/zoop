namespace :species do
  require 'nokogiri'
  require 'open-uri'
  require 'pry'
  desc "Scrapes species out of the ark."
  task create: :environment do
    base_url = 'http://www.arkive.org'
    # cheating a little to avoid scraping from multiple pages!
    animal_params = '/explore/species/mammals,birds,reptiles,amphibians,fish?results=9000'

    index = Nokogiri::HTML( open( base_url + animal_params ) )

    animal_list = index.css('.list .species')

    # scrape pagination
    # 80 pages /all/2
    # each page '/explore/species/mammals,birds,reptiles,amphibians,fish' + /all/[] + '?'

    # (2..pagination_length).each do |page|
    #   paginated_animal_page = Nokogiri::HTML( open ( base_url + '/explore/species/mammals,birds,reptiles,amphibians,fish/all/' + page.to_s + '?' ) )


    animal_list.each do |post|
      animal_url = post.css('h2 a').attribute('href').value

      animal_page = Nokogiri::HTML( open( base_url + animal_url ) )
          # binding.pry
          unless animal_page.css('.current a span').nil?
            name = animal_page.css('.current a span').text
          end
          unless /\((.*?)\)/.match(animal_page.css('h1 span').text)[1].nil?
            lati = /\((.*?)\)/.match(animal_page.css('h1 span').text)[1]
          end
          unless animal_page.css('#description p')[0].nil?
            desc = animal_page.css('#description p')[0].text.gsub(/(\([^)]+\)\ )/, "").strip
          end
          unless animal_page.css('#redListStatus').nil?
            stat = animal_page.css('#redListStatus').text.strip
          end
          unless animal_page.css('#description p')[4].nil?
            habi = animal_page.css('#description p')[4].text.gsub(/(\([^)]+\)\ )/, "").strip
          end
          unless animal_page.css('#description p')[2].nil?
            biol = animal_page.css('#description p')[2].text.gsub(/(\([^)]+\)\ )/, "").strip
          end
          unless animal_page.css('.factfileTaxonomy .class .taxon').nil?
            chor = animal_page.css('.factfileTaxonomy .class .taxon').text
          end

          species = Species.new(
          :common_name => name,
          :latin_name => lati,
          :description => desc,
          :status => stat,
          :habitat => habi,
          :biology => biol,
          :more_info => (base_url + animal_url),
          :chordatum_id => chor,
          :biome_id => rand(1..18)
          )

          species.save

          cloudinary_upload = Cloudinary::Uploader.upload( animal_page.css('#image img')[0].attribute('src').value )
          if cloudinary_upload
            image = Image.create( species_id: species.id, public_id: cloudinary_upload["public_id"], url: cloudinary_upload["url"] )
          end

          species.images << image
          # binding.pry

          p '--------------------------------------------'
          p species.common_name

      # end

    end

  end

end
