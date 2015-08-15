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
});
