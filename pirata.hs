data Pirata = Pirata{
nombrePirata :: String,
botin :: [(String,Int)]
} deriving (Eq,Show)

jackSP = Pirata {
nombrePirata = "Jack Sparrow",
botin = [("brujula",10000),("frasco arena",0)]
}

david = Pirata {
nombrePirata = "David Jones",
botin = [("caja musical",1)]
}

anne = Pirata {
nombrePirata = "Anne Bonny",
botin = [("doblones",100),("frasco arena",1)]
}

-- por aca bien

primero (x,_)=x

segundo (_,x)=x


valorTesoro pirata = map segundo (botin pirata)
nombreTesoro pirata = map primero (botin pirata)

-- Punto 1
cantidadTesoros pirata = length (botin pirata)
-- Punto 2
esAfortunado pirata = 9999 < sum (map segundo (botin pirata))

-- todo va en marcha

--Punto 3
nombreTesorosIguales pirata1 pirata2 = any (==True) (zipWith (==) (nombreTesoro pirata1) (nombreTesoro pirata2))
valorTesorosDistintos pirata1 pirata2 = any (==True)(zipWith (/=) (valorTesoro pirata1) (valorTesoro pirata2))

tienenElMismoTesoro pirata1 pirata2 = (nombreTesorosIguales pirata1 pirata2) &&  (valorTesorosDistintos pirata1 pirata2)

--Punto 4
elMasValioso pirata = maximum (valorTesoro pirata)

--Punto 5
nuevoTesoro pirata nombreTesoro valorDelTesoro = (nombreTesoro,valorDelTesoro) : (botin pirata)

--Punto 6
quitarTesoroValioso pirata = filter ((<100).segundo)  (botin pirata)

--Punto 7
quitarXTesoro pirata x = filter ((/=x).primero) (botin pirata)
quitarXTesoro pirata x = filter ((/=x).primero) (botin pirata)

-- TEMPORADA DE SAQUEOS

