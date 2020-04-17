# CSS Architecture

- 予測しやすい
- 再利用しやすい
- メンテナンスしやすい
- 拡張しやすい

[CSS Architecture](https://philipwalton.com/articles/css-architecture/)

## Predictable

Predictable CSS means your rules behave as you’d expect. When you add or update a rule, it shouldn’t affect parts of your site that you didn’t intend. On small sites that rarely change, this isn’t as important, but on large sites with tens or hundreds of pages, predictable CSS is a must.

## Reusable

CSS rules should be abstract and decoupled enough that you can build new components quickly from existing parts without having to recode patterns and problems you’ve already solved.

## Maintainable

When new components and features need to be added, updated or rearranged on your site, doing so shouldn’t require refactoring existing CSS. Adding component X to the page shouldn’t break component Y by its mere presence.

## Scalable

As your site grows in size and complexity it usually requires more developers to maintain. Scalable CSS means it can be easily managed by a single person or a large engineering team. It also means your site’s CSS architecture is easily approachable without requiring an enormous learning curve. Just because you’re the only developer touching the CSS today doesn’t mean that will always be the case.

# 設計

- [Atomic Design](https://atomicdesign.bradfrost.com/)
- [BEM](http://getbem.com/)
- [SMACCS](http://smacss.com/)

## CSSフレームワーク他

- [Bootstrap](https://getbootstrap.com/docs/4.4/getting-started/introduction/)
- [Bulma](https://bulma.io/documentation)
- [emma.css](https://github.com/ruedap/emma.css)

# sass

- [Sass Documentation](https://sass-lang.com/documentation)

# reset.css

- [ress](https://github.com/filipelinhares/ress)
- [normalize.css](https://github.com/necolas/normalize.css)
- [HTML5 Reset Stylesheet](http://html5doctor.com/html-5-reset-stylesheet/)

# デザイン参考

- [bootstrap](https://github.com/twbs/bootstrap/blob/master/scss/_variables.scss#L61)
- [HUE/360](https://hue360.herokuapp.com/)
- [色彩センスのいらない配色講座](https://www.slideshare.net/marippe/ss-9003317)
- [ノンデザイナーズデザインブックを読み解く](https://speakerdeck.com/monoooki/read-a-non-designers-designbook)
- [ズルいデザインテクニック](https://speakerdeck.com/ken_c_lo/zurui-design)
- [https://terkel.jp/](https://terkel.jp/)
- [Onsen UI](https://ja.onsen.io/theme-roller/)
- [シンプルなRailsアプリケーションに一匙加えるちょい足しアニメーションレシピ](https://speakerdeck.com/is8r/sinpurunarailsapurikesiyonni-chi-jia-erutiyoizu-sianimesiyonresipi)

# fontawesome

- [gem](https://github.com/FortAwesome/font-awesome-sass)
- [npm](https://www.npmjs.com/package/@fortawesome/fontawesome-free)
- [alfred-font-awesome-workflow](https://github.com/ruedap/alfred-font-awesome-workflow)
  - [Alfred](https://www.alfredapp.com/)

# display: flex

- [FLEXBOX FROGGY](http://flexboxfroggy.com/#ja)

# display: grid

- [CSS「display:grid;」便利すぎる！もう、Bootstrap不要？！](https://cruw.co.jp/blog/2018/07/css_grid/)

# IEなど各ブラウザ対応

- [rack-user_agent](https://github.com/k0kubun/rack-user_agent)
- [autoprefixer](https://github.com/postcss/autoprefixer)
- [autoprefixer-rails](https://github.com/ai/autoprefixer-rails)
- [Autoprefixer CSS online](https://autoprefixer.github.io/)

# break points

## bootstrap

- [_breakpoints.scss](https://github.com/twbs/bootstrap/blob/master/scss/mixins/_breakpoints.scss)
- [breakpoints](https://github.com/twbs/bootstrap/blob/master/scss/_variables.scss#L275)

- xs... 0 〜 575px
  - スマホ ポートレート
- sm... 576px 〜 767px
  - スマホ ランドスケープ
- md... 768px 〜 991px
  - タブレット ポートレート
- lg... 992px 〜 1199px
  - タブレット ランドスケープ
- xl... 1200px 〜 1399px
  - 小さいラップトップ
- xxl... 1400px 〜 ∞
  - PC

```scss
@include media-breakpoint-down(md) {
  // md 以下
  font-size: 3rem;
}
@include media-breakpoint-up(md) {
  // md 以上
  font-size: 3rem;
}
@include media-breakpoint-only(md) {
  // md のみ
  font-size: 3rem;
}
```
