﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentManagement.Models
{
    public class Department
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Budget { get; set; }
        public DateTime StartDate { get; set; }


        // DepartmentHead is an instructor
        public int DepartmentHeadId { get; set; }
        public Instructor DepartmentHead { get; set; }

    }
}
