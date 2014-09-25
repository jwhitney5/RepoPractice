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
    public class Waiter
    {
        [Key]
        public int WaiterID { get; set; }

        [Required(ErrorMessage = "First Name is a rerquired field")]
        [StringLength(25, ErrorMessage = "First name can be up to 25 characters")]
        public String FirstName { get; set; }

        [Required(ErrorMessage = "Last Name is a rerquired field")]
        [StringLength(35, ErrorMessage = "Last name can be up to 35 characters")]
        public String LastName { get; set; }

        [Required(ErrorMessage = "Phone is a rerquired field")]
        [StringLength(15, ErrorMessage = "First name can be up to 15 characters")]
        public String Phone { get; set; }

        [Required(ErrorMessage = "Address is a rerquired field")]
        [StringLength(30, ErrorMessage = "Address can be up to 30 characters")]
        public String Address { get; set; }

        [Required(ErrorMessage = "Hire Date is a rerquired field")]
        public DateTime HireDate { get; set; }

        public DateTime ReleaseDate { get; set; }

        //Navigational Entities
        public virtual ICollection<Bill> Bills { get; set; }

    }
}
