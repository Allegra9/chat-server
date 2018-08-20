class MessageSerializer < ActiveModel::Serializer
  attributes :id, :conversation_id, :user_name, :text, :created_at

  def user_name
    if(object.user)
      object.user.name
    else
      "DELETED USER"
    end
  end

end
