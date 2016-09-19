# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  # Bus_companies
  $("#bus_company_cnpj").inputmask(
    { mask: ['99.999.999/9999-99'], removeMaskOnSubmit: true });