class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :tags, :author

  def author
    {name: self.object.author[:name],
      created_at: self.object.author[:created_at]}
  end

end
