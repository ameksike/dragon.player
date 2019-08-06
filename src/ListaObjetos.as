/**
 *
 * @language: ActionScript
 * @version: 0.1
 * @description: Declaracion de una lista rustica que almacena los obletos de las clases
 * @authors: ing. Antonio Membrides Espinosa
 * @making-Date: 20/11/2005
 * @update-Date: 26/11/2005
 * @license: GPL
 *
 */
//--------------------------------------------------------------------------
class  ListaObjetos{	
	//*********************declaracion de variables**************************
	private var Lista:Array;
	//*********************declaracion de metodos****************************   
	public function ListaObjetos(){                           //constructor de la clase
		Lista = new Array(); 
	}
	//***********************************************************************
	public function Insert(inst:Object):Void{                 //adisiona un elemento al final de la lista
		Lista[Lista.length] = inst;		
	}
	//***********************************************************************
	public function  Insert_Pos(pos:Number,inst:Object){     //inserta un elemento dada una posicion 
		if(pos < Lista.length && pos >= 0 )
		{
			for(var i=Lista.length; i>pos; i-- )
			{
				Lista[i] = Lista[i-1];
			}
			Lista[pos] = inst;
		}
	}
	//***********************************************************************
	public function Obtain():Array{                       //obtiene la lista completa
		return Lista;
	}
	//***********************************************************************
	public function Obtain_Pos(pos:Number):Object{       //obtiene un elemento dado la posicion  
		return Lista[pos];
	}
	//***********************************************************************
	public function Delete_pos(pos:Number):Void{        //elimina un elemento  dada una posicion 
		if(pos < Lista.length && pos >= 0 )
		{
			for(var i=pos; i<Lista.length; i++)
			{
				Lista[i] = Lista[i+1];
		    }
			Lista.pop();
		}
	}
	//***********************************************************************
	public function Delete_inst(inst:Object){           //elimina un elemento dado
		for(var i=0; i<Lista.length; i++)
		{
			if(Lista[i] == inst )
			{
				Delete_pos(i);
			}
		}
	}
	//***********************************************************************
	public function Lonng():Number{                  //retorna el tamaño de la lista
		return Lista.length;
	}
	//***********************************************************************
	public function EsVacia():Boolean{              //retorna true si esta vacia 
		if(Lista.length == 0)
		   return true;
		else 
		   return  false;
	}
	//***********************************************************************
}