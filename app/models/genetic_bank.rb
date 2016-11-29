class GeneticBank < ActiveRecord::Base
    belongs_to :color
    has_many :crossings
    has_attached_file :picture, :path => ":rails_root/public/assets/images/geneticBank/:filename",
    :url => "/assets/images/geneticBank/:filename"
    validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

    #    VALIDATIONS
    validates :location, uniqueness: {case_sensitive: false, message:"Ya esta registrado"}
    
    validates :code, presence:{ message:"Obligatorio"}, uniqueness: {case_sensitive: false, message:"Ya esta registrado"}
    
    validates :tradeMark, uniqueness: {case_sensitive: false, message:"Ya esta registrado"}
    validates :denomination, uniqueness: {case_sensitive: false, message:"Ya esta registrado"}
    
    
end
