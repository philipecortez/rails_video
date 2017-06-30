require 'rails_helper'

RSpec.describe 'video upload', type: :feature do

  context 'when the user upload a valid video' do

    it 'record a video and return to the videos page' do
      visit videos_path
      click_on 'New video'
      expect(page).to have_current_path(new_video_path)

      within("#new_video") do
        fill_in "Title", with: "Test video"
        fill_in "Description", with: "a simple video description"
        attach_file('Url', File.join(Rails.root, 'spec', 'fixtures', 'acceptance', 'test_video.mp4'))
        click_on 'Create'
      end

      expect(page).to have_current_path(videos_path)
    end
  end
end
