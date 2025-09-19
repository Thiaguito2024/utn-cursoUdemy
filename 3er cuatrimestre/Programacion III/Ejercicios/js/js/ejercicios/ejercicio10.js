/*
Un usuario desea planificar sus gastos para un viaje. El sistema debe solicitarle los siguientes datos:
    Costo del pasaje (ida y vuelta)
    Costo estimado de alojamiento por noche
    Cantidad de noches que se hospedará
    Presupuesto estimado para comidas por día
    Presupuesto estimado para excursiones o actividades
Con esta información, el sistema debe calcular y mostrar:
    El total de alojamiento 
    El total de comidas
    El total general del viaje 
Al final, se debe mostrar un resumen de gastos y el monto final estimado que deberá llevar para su viaje.
*/

// Pido los datos solicitados
let costoPasaje = Number(prompt("Ingrese costo pasaje ida y vuelta "));
let costoAlojamientoPorNoche = Number(prompt("Ingrese costo estimado de alojamiento por noche "));
let cantNoches = Number(prompt("Ingrese Cantidad de noches que se hospedará "));
let presupuestoComidaPorDia = Number(prompt("Ingrese presupuesto estimado para comidas por día "));
let presupuestoAct = Number(prompt("Ingrese presupuesto estimado para excursiones o actividades "))

// Calculo el total del alojamiento, de la comida, el presupuesto para actividades y finalmente el total del viaje
let totalAlojamiento = costoAlojamientoPorNoche * cantNoches;
let totalComidas = presupuestoComidaPorDia * cantNoches;
let totalPresupuestoAct = presupuestoAct * cantNoches;
let totalViaje = costoPasaje + totalAlojamiento + totalComidas + totalPresupuestoAct;

// Muestro todos los datos por consola
console.log("------ Resumen de gastos estimados ------" +
            "\nCantidad de noches: " + cantNoches +
            "\nCosto del pasaje ida y vuelta: $" + costoPasaje +
            "\nAlojamiento: $" + totalAlojamiento +
            "\nComidas: $" + totalComidas + 
            "\nActividades/Excursiones: $" + totalPresupuestoAct +
            "\n----------------------------------------" +
            "\nMonto total estimado para el viaje: $" + totalViaje);
