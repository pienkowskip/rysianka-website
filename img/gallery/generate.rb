#!/usr/bin/ruby
require 'csv'
rows = CSV.new(STDIN).read
rows.each do |row|
  filename, desc = row[0], row[1]
  cat = File.dirname(filename)
  if desc
    puts <<-HTML
          <div class="col-sm-6 col-md-4 col-lg-4 portfolio-item #{cat}"><div class="hover-bg">
              <a href="img/gallery/#{filename}" title="#{desc}" data-lightbox-gallery="gallery1">
                <div class="hover-text"><h4>#{desc}</h4></div>
                <img src="img/gallery/thumbs/#{filename}" class="img-responsive" alt="#{desc}"></a></div>
          </div>
    HTML
  else
    puts <<-HTML
          <div class="col-sm-6 col-md-4 col-lg-4 portfolio-item #{cat}">
              <a href="img/gallery/#{filename}" data-lightbox-gallery="gallery1">
                <img src="img/gallery/thumbs/#{filename}" class="img-responsive"></a>
          </div>
    HTML
  end
  # if desc
  #   puts <<-HTML
  #         <div class="col-sm-6 col-md-4 col-lg-4 #{cat}">
  #           <div class="portfolio-item">
  #             <div class="hover-bg"> <a href="img/gallery/#{filename}" title="#{desc}" data-lightbox-gallery="gallery1">
  #               <div class="hover-text">
  #                 <h4>#{desc}</h4>
  #               </div>
  #               <img src="img/gallery/thumbs/#{filename}" class="img-responsive" alt="#{desc}"> </a> </div>
  #           </div>
  #         </div>
  #   HTML
  # else
  #   puts <<-HTML
  #         <div class="col-sm-6 col-md-4 col-lg-4 #{cat}">
  #           <div class="portfolio-item">
  #             <div class="hover-bg"> <a href="img/gallery/#{filename}" data-lightbox-gallery="gallery1">
  #               <img src="img/gallery/thumbs/#{filename}" class="img-responsive"> </a> </div>
  #           </div>
  #         </div>
  #   HTML
  # end
end
