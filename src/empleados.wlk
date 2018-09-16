object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//	var property sueldo = 15000

	var property sueldo = 15000
	var property sueldoAcumulado = 0
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() {sueldoAcumulado += sueldo}
}

object baigorria {
	var property sueldoAcumulado = 0
	var cantidadEmpanadasVendidas = 100
	const montoPorEmpanada = 15
	var deuda = 0
	var property sueldo = cantidadEmpanadasVendidas * montoPorEmpanada
	method deuda() = deuda
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method cobrarSueldo() { 
		if (deuda == 0){
			sueldoAcumulado += sueldo
			cantidadEmpanadasVendidas = 0
		} else {
			sueldoAcumulado += (sueldo - deuda).max(0)
			deuda = (deuda - sueldo).max(0)
			cantidadEmpanadasVendidas = 0
		}
	}
	
	method gasta(gasto){
		if (gasto <= sueldoAcumulado){
			sueldoAcumulado -= gasto
		} else {
			deuda += gasto - sueldoAcumulado
			sueldoAcumulado = 0
		}
	}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo() 
	}
}
