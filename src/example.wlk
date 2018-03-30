object sueldopepe {
	var categoria
	var presentismo
	var dias
	var resultado
	
	method cambiarCategoria(nuevaCategoria)
	{
		categoria=nuevaCategoria
	}
	
	method cambiarPresentismo(nuevoPresentismo)
	{
		presentismo=nuevoPresentismo
	}
	
	method cambiarDias(nuevoDia)
	{
		dias=nuevoDia
	}
	
	method cambiarResultado(nuevoResultado)
	{
		resultado=nuevoResultado
	}
	
	method sueldo()
	{
		return categoria.neto()+presentismo.bono(dias)+resultado.bono(categoria.neto())
	}
	


}


object gerente {
	method neto()= 1000
}


object cadete {
	method neto()=1500
}


object presentismo{
	method bono (dias)
	{
		if (dias == 0){ return 100}
		else if (dias == 1){ return 50}
		else {return 0}
	}  
}


object presentismo1{
	method bono(dias)=0
}


object resultado1{
	
	method bono(neto)= 0.1*neto	
}


object resultado2{
	
	method bono(neto)=80
}


object resultado3{
	
	method bono(neto)=0	
}