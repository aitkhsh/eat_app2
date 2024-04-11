class Food < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["genre", "mood"] # 検索可能な属性を指定
  end
end
