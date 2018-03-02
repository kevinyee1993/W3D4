# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  question_body :string           not null
#  poll_id       :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Question < ApplicationRecord

  has_many :answer_choices,
    class_name: :AnswerChoice,
    primary_key: :id,
    foreign_key: :question_id

  has_many :responses,
    class_name: :Response,
    primary_key: :id,
    foreign_key: :question_id
end
