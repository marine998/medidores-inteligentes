using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public interface IMedidorDAL
    {
        List<medidor> Obtenermedidor();
        medidor Obtener(int id);

        void AgregarMedidor(medidor medidor);
        void EliminarMedidor(int id);
    }
}
