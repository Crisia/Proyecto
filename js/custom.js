/**
 * jobando
 */

/**
 * Start Spinner
 */
function startSpinner() {
	$('.spinner').show();
}
/**
 * Stop Spinner
 */
function stopSpinner() {
	$('.spinner').hide();
}
startSpinner();

/**
 * Loading Spinner on form submit
 */
$("form").submit(function() {
	startSpinner();
});

/**
 * Document before unload
 */
window.onbeforeunload = function(e) {
	startSpinner();
};

/**
 * Documento ready load
 */
$(window).load(function() {
    stopSpinner();
});

/**
 * Date Range Element
 */
$('#dateRange .input-daterange').datepicker({
  	orientation: 'top',
  	autoclose: true,
  	format: 'yyyy-mm-dd',
  	todayHighlight: true
});