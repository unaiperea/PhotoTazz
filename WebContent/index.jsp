<%@page contentType="text/html"%> 
<%@page pageEncoding="UTF-8"%> 

<jsp:include page="includes/head.jsp"></jsp:include>
<jsp:include page="includes/nav.jsp"></jsp:include>


    <!-- Header -->
    <header id="myheader">
        
    </header>

    <!-- Page Content -->
    <div class="container">
             
		<div class="container">
		    <div class="page-header">
		        <h1>Photo Tazz <small>Drag and drop a directory on file input with <em>webkitdirectory</em></small></h1>
		    </div>
		    
		    <div class="row">
			    <div id="fileHolder">
			    	<div class="folder-icon">
			    		<img src='/PhotoTazz/img/downloads.png'></img>
			    	</div>
						<input type="file" multiple webkitdirectory id="fileURL"/>
			    </div>
		 
			 	<div class="row">
					<h4>Marca los archivos para subir:</h4>
					 <ul id="fileOutput">
					 </ul>
				</div>     
	  
			</div>
				</div>
	
	             <hr>
	
	<form action="<%=Constantes.CONTROLLER_SECTORES%>"
		enctype="multipart/form-data" method="post" role="form">
		<div class="row">
			<div class="form-group col-lg-1">
				<!-- Mostramon el input text, pero se submita el hidden -->
				<label for="id">ID</label> <input type="hidden" name="id"
					value="<%=sector.getId()%>"> <input type="text"
					class="form-control" value="<%=sector.getId()%>" disabled>
			</div>

			<div class="form-group col-lg-3">
				<label for="nombre">Nombre</label> <input type="text"
					class="form-control" name="nombre" value="<%=sector.getNombre()%>">
			</div>

		</div>
	</form>
	
	
	        <!-- Footer -->
	        <footer>
	            <div class="row">
	                <div class="col-lg-12">
	                    <p>Copyright &copy; Photo Tazz 2015</p>
	                </div>
	            </div>
	        </footer>

		</div><!-- /.container -->

<script type="text/javascript">
	var files, 
	file, 
	extension, 
	input = document.getElementById("fileURL"),
	output = document.getElementById("fileOutput"),
	holder = document.getElementById("fileHolder");
	
	input.addEventListener("change", function (e) {
	files = e.target.files;
	output.innerHTML = "";
	
	for (var i = 0, len = files.length; i < len; i++) {
	    file = files[i];
	    extension = file.name.split(".").pop();
	    output.innerHTML += "<li class='type-" + extension + "'>" + file.name + " (" +  Math.floor(file.size/1024 * 100)/100 + "KB) " + 
	    					"<input type='checkbox' name='validado' data-toggle='toggle' data-on='Validado' data-off='No Validado' value=1></div></div>" +
	    					"</li>";
	    //<input type='checkbox' "+validado+" name='validado' data-toggle='toggle' data-on='Validado' data-off='No Validado' value=1></div></div>");
	}
	}, false);
	
	
	
	//This event is fired as the mouse is moved over an element when a drag is occuring
	input.addEventListener("dragover", function (e) {
	holder.classList.add("highlightOver");
	});
	
	//This event is fired when the mouse leaves an element while a drag is occuring
	input.addEventListener("dragleave", function (e) {
	holder.classList.remove("highlightOver");
	});
	
	//Fires when the user releases the mouse button while dragging an object.
	input.addEventListener("dragend", function (e) {
	holder.classList.remove("highlightOver");
	});
	
	//The drop event is fired on the element where the drop was occured at the end of the drag operation
	input.addEventListener("drop", function (e) {
	holder.classList.remove("highlightOver");
	});
</script>


<jsp:include page="includes/foot.jsp"></jsp:include>
    