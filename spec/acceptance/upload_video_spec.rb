require 'rails_helper'

RSpec.describe 'video upload', type: :feature do

  context 'when the user upload a valid video' do

    it 'record a video and returns the recorded video id' do
      pending "need to implement Video class"
      visit videos_path
      click_on 'New video'
      expect(page).to have_current_path(new_video_path)

      within("#new_video") do
        fill_in "Title", with: "Test video"
        fill_in "Description", with: "a simple video description"
        attach_file('Video', File.join(Rails.root, 'spec', 'fixtures', 'acceptance', 'test_video.mp4'))
        click_on 'Create'
      end
    end

    it 'returns status 201 created' do
    end
  end
  
end
