<?php
//require('fpdf/fpdf.php');
require('tabla_pdf.php');
define('FPDF_FONTPATH', 'fpdf/font/');
$mat = array();
class PDF extends PDF_Tabla
{

   //Cabecera de pagina
   function Header()
   {
      $this->SetTitulo('Listado de Clientes');
      $this->cabecera();
      //Salto de linea
      $this->Ln(3);

      $this->Tabla();
   }

   //Pie de pagina
   function Footer()
   {
      $this->piepagina();
   } //END Footer
   function Tabla()
   {
      //----------------se arma el reporte--------------------
      global $mat; //matriz para guardar los datos de la consulta
      $curl = curl_init(); //inicia la sesión cURL

      curl_setopt_array($curl, array(
         CURLOPT_URL => "http://localhost/apieventos/getclientes.php", //url a la que se conecta
         CURLOPT_RETURNTRANSFER => true, //devuelve el resultado como una cadena del tipo curl_exec
         CURLOPT_FOLLOWLOCATION => true, //sigue el encabezado que le envíe el servidor
         CURLOPT_ENCODING => "", // permite decodificar la respuesta y puede ser"identity", "deflate", y "gzip", si está vacío recibe todos los disponibles.
         CURLOPT_MAXREDIRS => 10, // Si usamos CURLOPT_FOLLOWLOCATION le dice el máximo de encabezados a seguir
         CURLOPT_TIMEOUT => 30, // Tiempo máximo para ejecutar
         CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1, // usa la versión declarada
         CURLOPT_CUSTOMREQUEST => "GET", // el tipo de petición, puede ser PUT, POST, GET o Delete dependiendo del servicio
      )); //curl_setopt_array configura las opciones para una transferencia cURL

      $response = curl_exec($curl); // respuesta generada
      $err = curl_error($curl); // muestra errores en caso de existir

      curl_close($curl); // termina la sesión 

      if ($err) {
         echo "cURL Error #:" . $err;
         exit(1);
      }

      $objeto = json_decode($response);
      $i = 0;
      foreach ($objeto as $reg){
         $mat[$i]["Nombres"] = $reg->nombres;
         $mat[$i]["Apellidos"] = $reg->apellidos;
         $mat[$i]["Dirección"] = $reg->direccion;
         $mat[$i]["Telefono"] = $reg->telefono;
         $mat[$i]["Correo"] = $reg->correo;
         $i++;
      }
      
      

      //Colores, ancho de linea y fuente en negrita--- --->Color Blanco
      $this->SetFillColor(255, 255, 255);
      $this->SetTextColor(0);
      $this->SetDrawColor(0, 0, 0);
      $this->SetLineWidth(.2);
      $this->SetFont('Arial', 'B', 10);
      //;;;;;;;;;;;;;;;;;;;Cabecera ancho del texto del encabezado de la tabla;;;;;;;;;;;
      //Titulos de las columnas
      $cabecera = array('No', 'Nombres', 'Apellidos', 'Dirección', 'Telefono', 'Correo');
      $this->SetWidths(array(8, 20, 20, 55, 30, 60)); // define el ancho de la columnas
      $this->SetFont('Arial', 'B', 10);
      for ($i = 0; $i < count($cabecera); $i++)
         $this->Cell($this->widths[$i], 5, $cabecera[$i], 1, 0, 'J', 1);
      $this->Ln();
   } //end Tabla
} //end class

//Creacion del objeto de la clase heredada
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Arial', '', 10);
//Tabla con N filas y 2  columnas

global $mat;
for ($i = 0; $i < count($mat); $i++) {
   $pdf->Row(array(
      $i + 1,
      $mat[$i]["Nombres"],
      $mat[$i]["Apellidos"],
      $mat[$i]["Dirección"],
      $mat[$i]["Telefono"],
      $mat[$i]["Correo"]
   ));
}
$pdf->Output();
