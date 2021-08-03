using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedidorModel.DAL
{
    public class UsuarioDALDB : IUsuarioDAL
    {
        private medidores_inteligentesEntities medidorDB = new medidores_inteligentesEntities();
        public void AgregarUsuario(usuario usuario)
        {
            this.medidorDB.usuarios.Add(usuario);
            this.medidorDB.SaveChanges();
        }

        public void EliminarUsuario(int id)
        {
            usuario usuario = this.medidorDB.usuarios.Find(id);
            this.medidorDB.usuarios.Remove(usuario);
            this.medidorDB.SaveChanges();
        }

        public usuario Obtener(int id)
        {
            return this.medidorDB.usuarios.Find(id);
        }

        public void Actualizar(usuario u)
        {
            usuario usua = this.medidorDB.usuarios.Find(u.id_usuario);
            usua.nombre = u.nombre;
            usua.rut = u.rut;
            usua.correo = u.correo;
            usua.contraseña = u.contraseña;
            this.medidorDB.SaveChanges();
        }

        public List<usuario> ObtenerUsuario()
        {
            return this.medidorDB.usuarios.ToList();
        }
    }
}
