using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using System.ComponentModel.DataAnnotations;
#endregion

namespace eRestaurantSystem.Entities
{
    public class MenuCategories
    {
        [Key]
        public Int32 MenuCategoryID { get; set; }
        public string Description { get; set; }

        //navigation
        public virtual ICollection<Items> Items { get; set; }
    }
}
