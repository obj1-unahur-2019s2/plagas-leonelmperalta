class Hogar {
	var property nivelMugre
	var property confort = 0
	
	method esBueno(){
		return nivelMugre <= (confort / 2)
	}
	method recibirAtaque(plaga){
		nivelMugre += plaga.nivelDanio()
	}
}

class Huerta {
	var property capacidadProduccion
	
	
	method esBueno(){
		return capacidadProduccion > nivel.nivel()
	}
	method recibirAtaque(plaga){
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if(plaga.transmiteEnfermedades()){
			capacidadProduccion -= 10
		}
	}
}

class Mascota{
	var property nivelSalud
	
	method esBueno(){
		return nivelSalud > 250
	}
	method recibirAtaque(plaga){
		if(plaga.transmiteEnfermedades()){
			nivelSalud = 0.max(nivelSalud - plaga.nivelDanio())
		}
	}
}

class Barrios{
	var property elementos = []
	
	method agregarElemento(unElemento){elementos.add(unElemento)}
	method sacarElemento(unElemento){elementos.remove(unElemento)}
	
	method esCopado(){
		return elementos.count({e => e.esBueno()}) > elementos.count({e => not e.esBueno()})
	}
}

object nivel {
	var property nivel = 500
}