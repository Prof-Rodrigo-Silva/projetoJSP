<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Sistema CT RE" />
	<link rel="icon" href="assets/images/R.E.png" type="image/x-icon">
	<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">	
	
	<title>Sistema CT RE</title>
	<style type="text/css">
		form{
			position: absolute;
			top: 40%;
			left: 33%;
			right: 33%;
		}
		h5{
			position: absolute;
			top: 30%;
			left: 33%
		}
		.msg{
			position: absolute;
			top: 90%;
			left: 33%;
			font-size: 15px;
			color: #141619;
			background-color: #d3d3d4;
			border-color: #bcbebf;
		}
		
	</style>
	
</head>
<body>
	<h5>Bem vindo(a) ao Sistema do Centro de Treinamento RE</h5>
	
	<form action="<%=request.getContextPath() %>/ServletLogin" method="post" class="row g-3 row g-3 needs-validation" novalidate>
		<input type="hidden" value="<%=request.getParameter("url") %>" name="url" >
		<div class="col-mb-3">
			<label class="form-label">Login</label>
			<input class="form-control" name="login" type="text" required="required">
			<div class="invalid-feedback">
      			Campo Obrigatório.
    		</div>
		</div>
		<div class="col-mb-3">
			<label class="form-label">Senha</label>
			<input class="form-control" name="senha" type="password" required="required">
			<div class="invalid-feedback">
      			Campo Obrigatório.
    		</div>
		</div>
		<input class="btn btn-dark" type="submit" value="Acessar">
		
	</form>
	<h5 class="msg">${msg}</h5>
	
	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script type="text/javascript">
	// Example starter JavaScript for disabling form submissions if there are invalid fields
	(function () {
	  'use strict'

	  // Fetch all the forms we want to apply custom Bootstrap validation styles to
	  var forms = document.querySelectorAll('.needs-validation')

	  // Loop over them and prevent submission
	  Array.prototype.slice.call(forms)
	    .forEach(function (form) {
	      form.addEventListener('submit', function (event) {
	        if (!form.checkValidity()) {
	          event.preventDefault()
	          event.stopPropagation()
	        }

	        form.classList.add('was-validated')
	      }, false)
	    })
	})()
	</script>

</body>
</html>