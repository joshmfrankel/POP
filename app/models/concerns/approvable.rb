module Approvable
  extend ActiveSupport::Concern

  module ModelMethods

    def approve!
      self.approved = true
      self.save!
    end

    def unapprove!
      self.approved = false
      self.save!
    end
  end

  module ControllerMethods

  end
end
