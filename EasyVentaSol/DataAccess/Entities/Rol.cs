using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Entities
{
    public class Rol
    {
        public Rol()
        {
            this.Users = new HashSet<User>();
        }
        public int RoleId { get; set; }
        public string RolName { get; set; }

        public virtual ICollection<User> Users { get; set; }
    }
}
