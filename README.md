<center>
<img src="https://objetivo.news/download/multimedia.normal.bcba10cea1861629.Y29kZXJob3VzZS1xdWUtZXMtcXVlLWhhY2VuX25vcm1hbC53ZWJw.webp" style="width: 100% ; aspect-ratio:16/9">
</center>

## Tematica 
El proyecto SQL_Coderhouse_projecto_HernanFavat crea una base de datos llamada **pipeline_management** con varias tablas y procedimientos almacenados para gestionar oportunidades de venta, usuarios y productos. 
Las tablas principales incluyen **dim_users** para almacenar información de los usuarios, **facts_account** para detalles de cuentas, **facts_opportunities** para oportunidades de venta y **facts_products** para productos relacionados con las oportunidades.

He creado vistas para dar resumen a las oportunidades, indicar los mejores reps de ventas, mostrar distribución de. valor de las cuentas, desglose del estado de las oportunidades y rendimiento del producto. 
También he establecido store procedure para actualizar el estado de oportunidades y obtener información sobre productos más vendidos por los reps de ventas y distribución de valor de cuenta.

Además, se configuran triggers para registrar oportunidades gestionadas por técnicos y para registrar logros de objetivos de ventas para representantes de ventas fuera de Estados Unidos e India.
El proyecto apunta a gestionar eficientemente las oportunidades de venta y el rendimiento de los equipos a cargo, proporcionando información valiosa para la toma de decisiones estratégicas.


## Business case 

El business case para este proyecto es mejorar la gestión y el rendimiento de las oportunidades de venta, así como proporcionar insights valiosos sobre el desempeño. 
Los conceptos principales del business case serían:

1. Mejora de la eficiencia operativa: Al tener una base de datos centralizada y bien estructurada, se simplifica el proceso de acceso a los datos para los decisions makers en venta. 
Los datos sobre clientes, oportunidades, productos y reps están disponibles en un solo lugar, lo que facilita el seguimiento a la hora de la toma de decisiones.

2. La identificación de oportunidades dentro de los resultados: Las vistas y los store procedure proporcionan insights valiosos sobre las tendencias de las ventas, los productos más vendidos, los territorios con mayor potencial, etc. 
Estos datos permiten a la empresa identificar oportunidades de crecimiento y tomar decisiones informadas para maximizar los ingresos.

3. Cumplimiento de objetivos y seguimiento del progreso: Los store procedure permiten automatizar tareas como la actualización del estado de las oportunidades en función de ciertos criterios, lo que garantiza que se cumplan los objetivos de ventas establecidos. 
Además, el seguimiento del progreso a través de registros detallados, como el estado de las opportunidades, los owners, etc, ayuda a identificar áreas de mejora y ajustar estrategias según sea necesario.

## Diagrama de entidad - Reverse Engineer

<div style="text-align: center;">
    <img src="https://ibb.co/L182Z1b"><img src="https://i.ibb.co/JHKMsH0/Screenshot-2024-05-19-194607.png" alt="Screenshot-2024-05-19-194607" border="0"></a>
</div>
