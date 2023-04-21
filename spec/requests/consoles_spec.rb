require 'rails_helper'

RSpec.describe 'Console requests' do
    describe 'GET /console' do
        it 'returns an array of video games consoles' do
            get('/console')
            expect(response_json['consoles']).to contain_exactly(
                'NES',
                'SNES',
                'Wii',
                'Genesis',
                'Xbox',
                'Switch',
                'PS1',
                'PS2'
            ) 
        end 

        it 'returns specific consoles based on manufacturer' do
            get('/console', params: { manufacturer: 'Nintendo' })
            expect(response_json['consoles']).to contain_exactly(
                'NES',
                'SNES',
                'Wii',
                'Switch'
            )

            get('/console', params: { manufacturer: 'Sony' })
            expect(response_json['consoles']).to contain_exactly(
                'PS1',
                'PS2'
            )
        end
    end 
end