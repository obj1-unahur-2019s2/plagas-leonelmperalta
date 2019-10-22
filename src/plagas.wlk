class Plaga {
	var property poblacion
	
	method nivelDanio()
	method transmiteEnfermedades(){
		return poblacion >= 10
	}
	method atacar(unElemento){
		unElemento.recibirAtaque(self)
		self.poblacion(self.poblacion() * 1.1)
	}
}

class PlagaCucarachas inherits Plaga{
	var property pesoPromedio
	
	override method nivelDanio(){
		return poblacion / 2
	}
	override method transmiteEnfermedades(){
		return pesoPromedio >= 10 and super()
	}
	override method atacar(unElemento){
		pesoPromedio += 2
		super(unElemento)
	}
}

class PlagaPulgas inherits Plaga{
	override method nivelDanio(){
		return poblacion * 2
	}
	
}

class PlagaGarrapatas inherits PlagaPulgas{
	override method atacar(unElemento){
		unElemento.recibirAtaque(self)
		poblacion = poblacion * 1.2 
	}
}

class PlagaMosquitos inherits Plaga{
	override method nivelDanio(){
		return poblacion
	}
	override method transmiteEnfermedades(){
		return poblacion % 3 == 0
	}
}