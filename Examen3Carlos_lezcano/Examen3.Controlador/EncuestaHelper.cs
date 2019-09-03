using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Examen3.Controlador;
using MVC.Modelo;
using System.Data.SqlClient;

namespace Examen3.Controlador
{
    public class EncuestaHelper
    {
        Datos cnGeneral = null;
        DataTable tblDatos = null;
        // llama a mi clase cliente donde tengo mis constructores, set and get 
        Encuesta OBJEncuesta = null;


        public EncuestaHelper(Encuesta parObjencuesta)
        {
            OBJEncuesta = parObjencuesta;
        }

        public void InsertarEncuestas()
        {

            try
            {
                cnGeneral = new Datos();

                SqlParameter[] parParameter = new SqlParameter[9];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = OBJEncuesta.Opc;

                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@NumeroEncuesta";
                parParameter[1].SqlDbType = SqlDbType.Int;
                parParameter[1].SqlValue = OBJEncuesta.Nencu;

                parParameter[2] = new SqlParameter();
                parParameter[2].ParameterName = "@Nombre";
                parParameter[2].SqlDbType = SqlDbType.VarChar;
                parParameter[2].Size = 50;
                parParameter[2].SqlValue = OBJEncuesta.Nombre;

                parParameter[3] = new SqlParameter();
                parParameter[3].ParameterName = "@Apellido";
                parParameter[3].SqlDbType = SqlDbType.VarChar;
                parParameter[3].Size = 50;
                parParameter[3].SqlValue = OBJEncuesta.Apellido;

                parParameter[4] = new SqlParameter();
                parParameter[4].ParameterName = "@Fecha_Nacimiento";
                parParameter[4].SqlDbType = SqlDbType.DateTime;
                parParameter[4].SqlValue = OBJEncuesta.Fechanacimiento;

                parParameter[5] = new SqlParameter();
                parParameter[5].ParameterName = "@Edad";
                parParameter[5].SqlDbType = SqlDbType.Int;
                parParameter[5].SqlValue = OBJEncuesta.Edad;

                parParameter[6] = new SqlParameter();
                parParameter[6].ParameterName = "@Email";
                parParameter[6].SqlDbType = SqlDbType.VarChar;
                parParameter[6].Size = 50;
                parParameter[6].SqlValue = OBJEncuesta.Correo;

                parParameter[7] = new SqlParameter();
                parParameter[7].ParameterName = "@Carro";
                parParameter[7].SqlDbType = SqlDbType.VarChar;
                parParameter[7].Size = 10;
                parParameter[7].SqlValue = OBJEncuesta.Carro;

                parParameter[8] = new SqlParameter();
                parParameter[8].ParameterName = "@Axml";
                parParameter[8].SqlDbType = SqlDbType.VarBinary;
                parParameter[8].Size = 250000;
                parParameter[8].SqlValue = OBJEncuesta.Doc;


                cnGeneral.EjecutarSP(parParameter, "SPEncuenta");


            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }


        }

        public void enviarxml() {

            try
            {
                cnGeneral = new Datos();

                SqlParameter[] parParameter = new SqlParameter[2];

                parParameter[0] = new SqlParameter();
                parParameter[0].ParameterName = "@opcion";
                parParameter[0].SqlDbType = SqlDbType.Int;
                parParameter[0].SqlValue = OBJEncuesta.Opc;


                parParameter[1] = new SqlParameter();
                parParameter[1].ParameterName = "@Axml";
                parParameter[1].SqlDbType = SqlDbType.VarBinary;
                parParameter[1].Size = 250000;
                parParameter[1].SqlValue = OBJEncuesta.Doc;


                cnGeneral.EjecutarSP(parParameter, "SPExtraccion_De_Xml");


            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }



        }

    }
}
