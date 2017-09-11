class Song < ApplicationRecord
	has_many :user_song
	has_many :genre
	has_many :genrecreate
	has_many :users, through: :user_songs
end
