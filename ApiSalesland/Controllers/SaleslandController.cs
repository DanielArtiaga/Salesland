using ApiSalesland.Model;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using System.Data;
using System.Globalization;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiSalesland.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SaleslandController : ControllerBase
    {
        private readonly string cadenaMySQL;

        public SaleslandController(IConfiguration config)
        {
            cadenaMySQL = config.GetConnectionString("CadenaMySQL");
        }



        // POST api/<SaleslandController>
        [HttpPost]
        [Route("AgregarLead")]
        public IActionResult AgregarLead([FromBody] ClienteModel cliente)
        {
            try
            {
                using (var conexion = new MySqlConnection(cadenaMySQL))
                {
                    conexion.Open();
                    
                    //string fechaFormateada = fecha.ToString("yyyyMMddHHmmss");
                    var comando = new MySqlCommand("sp_AltaLead", conexion);




                    comando.Parameters.AddWithValue("@id", cliente.id);
                    comando.Parameters.AddWithValue("@campana", cliente.campana);
                    comando.Parameters.AddWithValue("@cod_proveedor", cliente.cod_proveedor);
                    comando.Parameters.AddWithValue("@fecha_captacion",cliente.fecha_captacion);
                    comando.Parameters.AddWithValue("@nombre", cliente.nombre);
                    comando.Parameters.AddWithValue("@ape1", cliente.ape1);
                    comando.Parameters.AddWithValue("@ape2", cliente.ape2);
                    comando.Parameters.AddWithValue("@nif", cliente.nif);
                    comando.Parameters.AddWithValue("@telefono", cliente.telefono);
                    comando.Parameters.AddWithValue("@email", cliente.email);
                    comando.Parameters.AddWithValue("@direccion", cliente.direccion);
                    comando.Parameters.AddWithValue("@codigo_postal", cliente.codigo_postal);
                    comando.Parameters.AddWithValue("@poblacion", cliente.poblacion);
                    comando.Parameters.AddWithValue("@provincia", cliente.provincia);
                    comando.Parameters.AddWithValue("@acepta1", cliente.acepta1);
                    comando.Parameters.AddWithValue("@acepta2", cliente.acepta2);
                    comando.Parameters.AddWithValue("@acepta3", cliente.acepta3);
                    comando.Parameters.AddWithValue("@num1", cliente.num1);
                    comando.Parameters.AddWithValue("@num2", cliente.num2);
                    comando.Parameters.AddWithValue("@num3", cliente.num3);
                    comando.Parameters.AddWithValue("@dual1", cliente.dual1);
                    comando.Parameters.AddWithValue("@dual2", cliente.dual2);
                    comando.Parameters.AddWithValue("@dual3", cliente.dual3);
                    comando.Parameters.AddWithValue("@variable1", cliente.variable1);
                    comando.Parameters.AddWithValue("@variable2", cliente.variable2);
                    comando.Parameters.AddWithValue("@variable3", cliente.variable3);
                    comando.Parameters.AddWithValue("@memo", cliente.memo);
                    comando.Parameters.AddWithValue("@fecha", cliente.fecha);
                    comando.Parameters.AddWithValue("@hora", cliente.hora);
                    comando.Parameters.AddWithValue("@foto1", cliente.foto1);
                    comando.Parameters.AddWithValue("@foto2", cliente.foto2);
                    comando.Parameters.AddWithValue("@comercial", cliente.comercial);
                    comando.Parameters.AddWithValue("@centro", cliente.centro);

                    //comando.Parameters.AddWithValue("@codigo_ws", fechaFormateada);
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.ExecuteNonQuery();
                    // Validar Telefono
                    string query = "SELECT COUNT(*) FROM WS_LEADS_DISOCIADOS WHERE telefono = @telefono";
                    using (var comandoVerificacion = new MySqlCommand(query, conexion))
                    {
                        comandoVerificacion.Parameters.AddWithValue("@telefono", cliente.telefono);
                        int count = Convert.ToInt32(comandoVerificacion.ExecuteScalar());

                        if (count > 0)
                        {
                            // Si el teléfono ya existe, retornar un mensaje de error
                            return StatusCode(StatusCodes.Status400BadRequest, new { CAMPANA = cliente.campana, RESULTADO = "OK: Telefono duplicado", TELEFONO = cliente.telefono });
                        }
                        else
                        {
                            return StatusCode(StatusCodes.Status200OK, new { CAMPANA = cliente.campana, RESULTADO = "OK", TELEFONO = cliente.telefono });

                        }
                    }
                }
                
            }
            catch (Exception error)
            {
                string resultado = "KO: " + error.Message;

                
                var responseObj = new { CAMPANA = cliente.campana, RESULTADO = resultado, TELEFONO = cliente.telefono };




                // Devuelve el error con el código de estado 500
                return StatusCode(StatusCodes.Status500InternalServerError, responseObj);
            }
        }
    }
}
