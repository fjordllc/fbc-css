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

# fontawesome

- [gem](https://github.com/FortAwesome/font-awesome-sass)
- [npm](https://www.npmjs.com/package/@fortawesome/fontawesome-free)
- [alfred-font-awesome-workflow](https://github.com/ruedap/alfred-font-awesome-workflow)
