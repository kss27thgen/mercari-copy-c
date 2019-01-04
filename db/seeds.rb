[
  [---],
  [レディース],
  [ベビー・キッズ],
  [本・音楽・ゲーム],
].each do |name|
  LargeCategory.create!(
    { name: name }
  )
