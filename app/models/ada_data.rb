class AdaData
  include Mongoid::Document
  include Mongoid::Timestamps

  field :game, type: String
  field :user_id, type: Integer

  def user=(user)
    self.user_id = user.id
  end

  def user
    User.find(self.user_id)
  end
end
