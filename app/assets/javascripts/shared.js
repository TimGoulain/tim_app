$(function () {
  // Date picker
  // Docs: https://github.com/Nerian/bootstrap-datepicker-rails

  $.fn.datepicker.defaults.format = "yyyy-mm-dd";
  $.fn.datepicker.defaults.autoclose = true;
  $.fn.datepicker.defaults.weekStart = 1;

  $('.birthday-picker').datepicker({
    startView: 2,
    startDate: "1910-01-01",
    endDate: "2003-12-31"
  });

  $('.date-picker').datepicker();
});

  // Star rating

$('#star').raty({
  readOnly: true,
  score: <%= @recommendation.average_rating %>,
  path: '/assets'
});

$('#recommendation_star').raty({
  score: <%= @rating.score %>,
  path: '/assets',
  click: function(score, evt) {
    $.ajax({
      url: '/ratings/' + <%= @rating.id %>,
      type: 'PATCH',
      data: { score: score }
    });
  }
});
