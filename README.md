テスト済み
どうしてテストがクリアしてるのかわからない

fontawesome の導入　rails6 ２４章に記載（開発２の)
<li>
  <%= link_to user_path(current_user),class: 'nav-link text-light' do %>
    <i class="fas fa-home"></i>Home
  <% end %>
</li>
 でリンク生成できる
新規投稿のパスで通らないとき変数名のチェック
usercontrollerのcorrectuser不要
form の縦並びはform-controllとかをclass:""で加えるだけ
レイアウトの崩れはdivタグとかに原因があるケースあり。
    
    
 アクセス制限が余分にかかっていると変なページに遷移してしまう可能性あり。
    二重にかかっていることも考えられる。

    
    ログイン後アクセスできないウェブ画面えらーも特になし
    その時はapplicationcontrollerのリダイレクト先を指定しているところを確認。resource
   resouces?
    
