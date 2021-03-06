class Contributor < ActiveRecord::Base
  belongs_to :project, :inverse_of => :contributors
  belongs_to :contributable, :polymorphic => true, :inverse_of => :contributable
  attr_accessible :contributor_id, :contributor_type, :current, :role
end
