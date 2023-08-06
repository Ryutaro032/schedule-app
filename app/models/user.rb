class User < ApplicationRecord
    validates :title, presence: true, length: { maximum: 20}
    validates_presence_of :start_day, :end_day
    validate :start_end_check
    validates :memo, length: { maximum: 500}

    def start_end_check
        if self.start_day != nil && self.end_day != nil
            if self.start_day > self.end_day
                errors.add(:end_day, "は開始日より前の日付は登録できません。")
            end
        end
    end
end
