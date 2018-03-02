# == Schema Information
#
# Table name: responses
#
#  id                :integer          not null, primary key
#  question_id       :integer          not null
#  user_id           :integer          not null
#  answer_choices_id :integer
#

class Response < ApplicationRecord
  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choices_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
end
