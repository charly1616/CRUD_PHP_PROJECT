<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Nuevo Cliente</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form method="POST" id="formnew" name="formnew">
          <div class="mb-3">
            <label for="nombres" class="col-form-label">Nombres:</label>
            <input type="text" class="form-control" id="nombres" name="nombres" require>
          </div>

          <div class="mb-3">
            <label for="apellidos" class="col-form-label">Apellidos:</label>
            <input type="text" class="form-control" id="apellidos" name="apellidos" require>
          </div>

          <div class="mb-3">
            <label for="direccion" class="col-form-label">Dirección:</label>
            <input type="text" class="form-control" id="direccion" name="direccion" require>
          </div>

          <div class="mb-3">
            <label for="telefono" class="col-form-label">Teléfono:</label>
            <input type="text" class="form-control" id="telefono" name="telefono" require>
          </div>
          <div class="mb-3">
            <label for="correo" class="col-form-label">correo:</label>
            <input type="email" class="form-control" id="correo" name="correo" require>
          </div>
          

          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input type="submit" class="btn btn-primary" value="Guardar"/>
          </div>
        </form>
        
      </div>
      
    </div>
  </div>
</div>

<script>
$('#formnew').submit(function(event) {
    var parametros = {
        nombres: $("#nombres").val(),
        apellidos: $("#apellidos").val(),
        correo: $("#correo").val(),
        telefono: $("#telefono").val(),
        direccion: $("#direccion").val()
    };

    $.ajax({
        type: "POST",
        url: "http://localhost/apieventos/save.php",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=UTF-8", // 👈 importante
        dataType: "json", // para que jQuery lo parsee
        success: async function(datos){
                await Swal.fire({
                    title: "Creadooo",
                    text: "Exitosamente create a un nuevo usuario",
                    icon: "success"
                }).then( ()=>{location.reload()})
                limpiar();     
                removeMessage();
                
                },
        error: function(xhr) {
          Swal.fire({
                      title: "Errorcito",
                      text: "Nada mano, no se creó",
                      icon: "error"
                  })
        }
    });
})

</script>




