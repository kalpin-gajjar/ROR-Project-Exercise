class ValidatorClass < ActiveModel::Validator
    def validate(record)
        if record.title == "Narendra Modi"
            record.errors.add :title, "can not be Prime Minister's name."
        end
    end
end

class Article < ApplicationRecord
    validates :title,:body, presence: true
    validates :title, length: {maximum: 20}
    validates :body, length: {minimum: 10}
    validates :title, exclusion: {in: %w(Title Article), message: " can not be %{value}"}
    validates :title, format: {with: /\A[a-zA-z ]+\z/, message: "should contain only letters."}
    validates :title, uniqueness: true
    validates :user_agreement, acceptance: true
    validates :email, confirmation: true
    validates :email_confirmation, presence: true
    validates :end_date, comparison: {greater_than: :start_date}
    validates :author_name, absence: true
    validates :gender, inclusion: {in: %w(Male Female Other), message: "must be Male/Female/Other"}
    validates :age, numericality: {only_integer: true, greater_than: 0, message: "must be a number and greater than 0."}
    validates_with ValidatorClass
    validates_each :title do |record, attr, value|
        record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
    end
end