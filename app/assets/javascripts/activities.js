$(function(){
 $('#new_activity').on('ajax:success', function(event, data, status, xhr){
   $(this).find('input:text').val('');
   var template = $(data.template)
   $('.container').append(template);
 })
})
