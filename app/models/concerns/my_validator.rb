class MyValidator < ActiveModel::Validator
  def validate(record)
    if record.title.include?('Top') == false
      # record.errors[:title] << false
      record.errors.add(:title, false)
    elsif record.title.include?('Secret') == false
      record.errors.add(:title, false)
    elsif record.title.include?('Guess') == false
      record.errors.add(:title, false)
    elsif record.title.include?("Won't Believe") == false
      record.errors.add(:title, false)
    end
  end
end