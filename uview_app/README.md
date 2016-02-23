# U * VIEW

Restaurant ratings!


Stars ratings example:
```html
<style>
  .rating-stars {
    display: inline-block;
    margin-left: 8px;
    color: gold;
  }
</style>
<h2>Pine & Crane</h2>
<p>Food Rating:
  <span class="rating-stars">
    <%= Review.first.food_rating_icons %>
  </span>
</p>
```
