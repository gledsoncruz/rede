class EscolasMergulhadores < ActiveRecord::Base
  belongs_to :escola
  belongs_to :mergulhador
end
