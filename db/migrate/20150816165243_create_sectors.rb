# encoding: utf-8
class CreateSectors < ActiveRecord::Migration
  def change
    Sector.create([
      { code: 'bar' },
      { code: 'hotel' },
      { code: 'farming' },
      { code: 'volunteering' },
      { code: 'ngos' },
      { code: 'events' },
      { code: 'sales' },
      { code: 'babysitting' },
      { code: 'au-pair' },
      { code: 'maid' },
    ])
  end
end
