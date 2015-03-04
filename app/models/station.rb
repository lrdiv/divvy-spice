class Station < ActiveRecord::Base

  self.rgeo_factory_generator = RGeo::Geos.factory_generator
  set_rgeo_factory_for_column(:lnglat, RGeo::Geographic.spherical_factory(srid: 4326))

end
