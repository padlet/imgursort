module Imgursort
  module HtmlGenerator
    # Generates the required HTML file and store it in a directory
    def self.generate(ordered_images)
      <<-HTML
        <html>
        <head>
          <style>
            body {
              display: flex;
              flex-wrap: wrap;
              flex-direction: row;
              width: 100%;
            }
            div.tile > img {
              width: 60px;
            }
          </style>
        </head>
        <body>
        #{ordered_images.map{ |img| image_fragment(img) }.join('')}
        </body>
        </html>
      HTML
    end

    def self.image_fragment(image)
      <<-FRAGMENT
      <div class="tile">
        <img src="#{image.url}" />
      </div>
      FRAGMENT
    end
  end
end
