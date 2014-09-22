using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#region Additional Namespaces
using eRestaurantSystem.Entities;
using eRestaurantSystem.DAL;
using System.ComponentModel;
#endregion

namespace eRestaurantSystem.BLL
{
    [DataObject]
    public class eRestaurantController
    {
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<SpecialEvent> SpecialEvent_List()
        {
            //interfacing with our Context class which inherits from DBContext, which ties into EntityFramework, which will handle our calls to the data
            using(eRestaurantContext context = new eRestaurantContext())
            {
                return context.SpecialEvents.ToList();
            }
        }

        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public List<Reservation> ReservationbyEvent(string eventcode)
        {
            using (eRestaurantContext context = new eRestaurantContext())
            {
                return context.Reservations.Where(anItem => anItem.eventcode == eventcode).ToList();
            }
        }
    }
}
