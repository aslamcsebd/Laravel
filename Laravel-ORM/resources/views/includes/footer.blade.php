  	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
   
   <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
   
   <script type="text/javascript" src="//cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

   <!-- {{-- DataTable --}} -->

	   <script type="text/javascript">
	      $(document).ready( function () {
	         $('.table').DataTable();
	      } );
	      $(document).ready( function () {
	         $('.table').DataTable();
	      } );
	   </script>

{{-- For collapse --}}
	<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>

   <script type="text/javascript">
   	function toggleIcon(e) {
		  $(e.target)
		    .prev(".panel-heading")
		    .find(".more-less")
		    .toggleClass("glyphicon-plus glyphicon-minus");
		}
		$(".panel-group").on("hidden.bs.collapse", toggleIcon);
		$(".panel-group").on("shown.bs.collapse", toggleIcon);
   </script>

  