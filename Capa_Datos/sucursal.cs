//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Capa_Datos
{
    using System;
    using System.Collections.Generic;
    
    public partial class sucursal
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public sucursal()
        {
            this.area = new HashSet<area>();
            this.brigada_emergencia = new HashSet<brigada_emergencia>();
            this.documento = new HashSet<documento>();
            this.lista_actividad = new HashSet<lista_actividad>();
            this.matriz_responsabilidad = new HashSet<matriz_responsabilidad>();
            this.norma_sucursal = new HashSet<norma_sucursal>();
            this.plan = new HashSet<plan>();
            this.tipo_documento = new HashSet<tipo_documento>();
        }
    
        public int id_sucursal { get; set; }
        public string nombre { get; set; }
        public Nullable<int> id_municpio { get; set; }
        public Nullable<int> id_empresa { get; set; }
        public string direccion { get; set; }
        public Nullable<int> sede_principal { get; set; }
        public string representante { get; set; }
        public string movil { get; set; }
        public string fijo { get; set; }
        public Nullable<int> actividad_ppal { get; set; }
        public Nullable<int> actividad_sec { get; set; }
        public Nullable<int> actividad_otra { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<area> area { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<brigada_emergencia> brigada_emergencia { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<documento> documento { get; set; }
        public virtual empresa empresa { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<lista_actividad> lista_actividad { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<matriz_responsabilidad> matriz_responsabilidad { get; set; }
        public virtual municipio municipio { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<norma_sucursal> norma_sucursal { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<plan> plan { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<tipo_documento> tipo_documento { get; set; }
    }
}
