using System;
using System.ComponentModel.DataAnnotations;


namespace LoanManage.Database.Entity
{
    public class LoanDetails
    {
        public int Id { get; set; }

        [Required]
        public int Amount { get; set; }

        [Required]
        public string Term { get; set; }

        [Required]
        public string Type { get; set; }

        [Required]
        public string City { get; set; }

        [Required]
        public string Startdate { get; set; }

        [Required]
        public string Enddate { get; set; }
    }
}
