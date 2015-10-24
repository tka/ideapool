module AssetsHelper
  def stylesheet_link_tag(*sources)
    sources = get_assets_sources(sources, 'css')
    super(*sources)
  end

  def javascript_include_tag(*sources)
    sources = get_assets_sources(sources, 'js')
    super(*sources)
  end

  private

  def assets_manifest
    manifest_file = Rails.root.join('public','assets','manifest.json')
    JSON.load(manifest_file)
  end

  def get_assets_sources(sources, ext)
    sources = sources.uniq.map do |source|
      if source.is_a?(String)
        source += ".#{ext}" unless source =~ /\.#{ext}\z/
        path = assets_manifest[source]
        if path
          "/assets/#{path}"
        else
          raise "Cant get #{source}"
        end
      else
        source
      end
    end
  end

end
