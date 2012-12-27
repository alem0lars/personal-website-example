class Curriculum < ActiveRecord::Base
  attr_accessible :address, :date_of_birth, :email, :first_name, :gender,
      :mobile_phone, :mobile_phone_prefix, :nationality, :surname

  validates :address, :presence => true, :length => { :minimum => 6 }

  validates :first_name, :presence => true, :length => { :minimum => 3 }
  validates :surname, :presence => true, :length => { :minimum => 3 }

  validates :gender, :presence => true, :inclusion => { :in => %w(male female) }

  validates :mobile_phone_prefix, :presence => true, :length => { :minimum => 2, :maximum => 4 },
      :numericality => true
  validates :mobile_phone, :presence => true, :length => { :minimum => 5 },
      :numericality => true

  validates :nationality, :presence => true, :length => { :minimum => 4 }

  validates :email, :presence => true, :email_format => true

  has_many :curriculum_work_experiences
  has_many :curriculum_educations
  has_many :curriculum_known_languages
  has_many :curriculum_social_skills
  has_many :curriculum_organisational_skills
  has_many :curriculum_technical_skills
  has_many :curriculum_computer_skills
  has_many :curriculum_artistic_skills
  has_many :curriculum_other_skills
  has_many :curriculum_driving_licenses
  has_many :curriculum_additional_informations
end
