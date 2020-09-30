class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'エール（上面発酵）' },
    { id: 3, name: 'ラガー（下面発酵）' },
    { id: 4, name: 'その他（自然発酵）' }
  ]
end
