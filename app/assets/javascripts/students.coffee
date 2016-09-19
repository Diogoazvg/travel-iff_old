# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  # Travels
  $("#student_person_attributes_phone").inputmask(
    { mask: ['(99) 999999999'], removeMaskOnSubmit: true });
  $("#student_person_attributes_identity").inputmask(
    { mask: ['99999999-9'], removeMaskOnSubmit: true });
  $("#student_person_attributes_cpf").inputmask(
    { mask: ['999.999.999-99'], removeMaskOnSubmit: true });
