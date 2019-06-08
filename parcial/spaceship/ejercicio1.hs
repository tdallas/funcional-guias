data Component = Cargo | Engine | Shield | Cannon
data Spaceship = Plug | Module Component Spaceship Spaceship

data Direction = Larboard | Starboard
data Size = Small | Big | Torpedo
type Hazard = (Direction, Int, Size)

-- indica si la nave posee al menos un generador de campos de fuerza 
shielded :: Spaceship -> Bool
shielded Plug = False
shielded (Module Shield s1 s2) = True 
shielded (Module c s1 s2) = False || shielded s1 || shielded s2

-- indica si la nave posee al menos un cañon
armed :: Spaceship -> Bool
armed Plug = False
armed (Module Cannon s1 s2) = True 
armed (Module c s1 s2) = False || shielded s1 || shielded s2

-- retorna el poder de propulsión de una nave, por cada engine en un nodo hoja 
-- provee una unidad de empuje
thrust :: Spaceship -> Int
thrust Plug = 0
thrust (Module Engine Plug Plug) = 1
thrust (Module c s1 s2) = thrust s1 + thrust s2

-- devuelve la nave resultante de desprender los módulos dependientes del módulo
-- donde se recibe un impacto
wreck :: Hazard -> Spaceship -> Spaceship
wreck (_, 0, _) s = Plug
wreck (_, i, _) Plug = Plug
wreck (Larboard, i, s) (Module c s1 s2) = (Module c (wreck (Larboard, i-1, s) s1) s2)
wreck (Starboard, i, s) (Module c s1 s2) = (Module c s1 (wreck (Starboard, i-1, s) s2))

-- para probar
ejemplo = (Module Cannon (Module Cargo (Module Shield Plug Plug) Plug) (Module Engine (Module Engine Plug Plug) Plug))
spaceshipToList Plug = []
spaceshipToList (Module Cargo s1 s2) = "H" ++ spaceshipToList s1 ++ spaceshipToList s2
spaceshipToList (Module Engine s1 s2) = "E" ++ spaceshipToList s1 ++ spaceshipToList s2
spaceshipToList (Module Shield s1 s2) = "S" ++ spaceshipToList s1 ++ spaceshipToList s2
spaceshipToList (Module Cannon s1 s2) = "C" ++ spaceshipToList s1 ++ spaceshipToList s2