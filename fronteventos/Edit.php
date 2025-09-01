<div class="modal fade" id="editModal" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="editModalLabel">Nuevo Cliente</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form method="POST" id="formedit" name="formedit">
            <input type="text" class="form-control" id="editid" name="id" hidden>
          <div class="mb-3">
            <label for="nombres" class="col-form-label">Nombres:</label>
            <input type="text" class="form-control" id="editnombres" name="nombres" require>
          </div>

          <div class="mb-3">
            <label for="apellidos" class="col-form-label">Apellidos:</label>
            <input type="text" class="form-control" id="editapellidos" name="apellidos" require>
          </div>

          <div class="mb-3">
            <label for="direccion" class="col-form-label">Dirección:</label>
            <input type="text" class="form-control" id="editdireccion" name="direccion" require>
          </div>

          <div class="mb-3">
            <label for="telefono" class="col-form-label">Teléfono:</label>
            <input type="text" class="form-control" id="edittelefono" name="telefono" require>
          </div>
          <div class="mb-3">
            <label for="correo" class="col-form-label">correo:</label>
            <input type="email" class="form-control" id="editcorreo" name="correo" require>
          </div>
          

          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input type="submit" class="btn btn-primary" value="Actualizar"/>
          </div>
        </form>
        
      </div>
      
    </div>
  </div>
</div>

<script>
$('#formedit').submit(function(event) {
    var parametros = {
        id: $("#editid").val(),
        nombres: $("#editnombres").val(),
        apellidos: $("#editapellidos").val(),
        direccion: $("#editdireccion").val(),
        correo: $("#editcorreo").val(),
        telefono: $("#edittelefono").val()
    };

    console.log("the editors")

    $.ajax({
        type: "PUT",
        url: "http://localhost/apieventos/update.php",
        data: JSON.stringify(parametros),
        contentType: "application/json; charset=UTF-8",
        dataType: "json", // para que jQuery lo parsee
        success: async function(datos){
                await Swal.fire({
                    title: "Actualzado",
                    text: "Actualizaste la información del usuario",
                    icon: "success"
                })
                
                limpiar();     
                removeMessage();
                
                },
        error: function(xhr) {
          Swal.fire({
                      title: "Errorcito",
                      text: "Nada mano, no se editó",
                      icon: "error"
                  })
        }
    })
    .then( ()=>{location.reload()})
})

</script>




