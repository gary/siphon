class Task < ApplicationRecord
  scope :with_body_containing, ->(query) {
    where("textsearchable_index_col @@ to_tsquery(?)", query)
  }

  def serializable_hash(options = nil)
    super({ except: :textsearchable_index_col })
  end
end
