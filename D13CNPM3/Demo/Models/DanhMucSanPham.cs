//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Demo.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DanhMucSanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DanhMucSanPham()
        {
            this.DanhMucSanPham1 = new HashSet<DanhMucSanPham>();
            this.DanhMucSanPham11 = new HashSet<DanhMucSanPham>();
            this.SanPham = new HashSet<SanPham>();
        }
    
        public int id_danh_muc { get; set; }
        public string ten_danh_muc { get; set; }
        public Nullable<int> id_danh_muc_cha { get; set; }
        public Nullable<int> id_danh_muc_con { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DanhMucSanPham> DanhMucSanPham1 { get; set; }
        public virtual DanhMucSanPham DanhMucSanPham2 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DanhMucSanPham> DanhMucSanPham11 { get; set; }
        public virtual DanhMucSanPham DanhMucSanPham3 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SanPham> SanPham { get; set; }
    }
}
