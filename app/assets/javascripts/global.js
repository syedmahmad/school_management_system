$(function(){
  setTimeout(function() {
    $('.alert-msg').slideUp();
  }, 5000);

  $('.datatable').DataTable({
     responsive: true
  // ajax: ...,
  // autoWidth: false,
  // pagingType: 'full_numbers',
  // processing: true,
  // serverSide: true,

  // Optional, if you want full pagination controls.
  // Check dataTables documentation to learn more about available options.
  // http://datatables.net/reference/option/pagingType
  });
  // $(".alert").slideDown(500, function(){setTimeout(function(){$(".alert").slideUp(500},7000);});
});