step 'デスクトップのトップ画面を表示する' do
  visit '/'

  expect(page).to have_title 'Frontend Mentor | Shortly URL shortening API Challenge'
  expect(page.status_code).to eq 200
end

step 'URL入力フィールドに:long_linkと入力する' do |long_link|
  page.within('form') do
    find('input[type=text]').set(long_link)
  end
end

step '送信ボタンをクリックする' do
  page.click_button('Shorten It!')
end

step 'URL:long_linkの短縮結果とボタン:buttonを表示している' do |long_link, button|
  page.within('article.records') do
    within('article') do
      assert_text(long_link)
      assert_selector('button', text: button)
    end
  end
end

step 'URL:long_linkの短縮操作をする' do |long_link|
  step %Q!デスクトップのトップ画面を表示する!
  step %Q!URL入力フィールドに"#{long_link}"と入力する!
  step %Q!送信ボタンをクリックする!
  step %Q!URL"#{long_link}"の短縮結果とボタン"Copy"を表示している!
end

step 'URL:long_linkの短縮結果のボタン:buttonをクリックする' do |long_link, button|
  page.click_button(button)
end

step 'URL:long_linkの短縮結果をクリップボートにコピーしている' do |long_link|
  step %Q!URL入力フィールドに""と入力する!
  page.send_keys([:control, 'v'])
  page.within('form') do
    expect(find('input[type=text]').value).not_to be_empty
  end
end

step 'エラーメッセージ:messageを表示している' do |message|
  page.within('form') do
    assert_text(message)
  end
end

step 'ブラウザを再読み込みする' do
  page.refresh
end
