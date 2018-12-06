separate(simulation)
protected body Map is
   function GetShip(c : Coord) return ShipPointer is
   begin
      return MapM(c.X,c.Y).SP;
   end GetShip;
   
   function GetStat(c : Coord) return Boolean is
   begin
      return MapM(c.X,c.Y).Status;
   end GetStat;
   
   procedure Init(n : in Integer) is
   begin
       s :=  n;
      for I in 1..n loop
         for J in 1..n loop
            MapM(I,J).SP := null;
            MapM(I,J).Status := False;
         end loop;
      end loop;
   end Init;
   
   procedure EndFight is
   begin
      for I in 1..s loop
         for J in 1..s loop
            if MapM(I,J).Status = True then
               Agent(MapM(I,J).SP);
            end if;
         end loop;
      end loop;
      
   end EndFight;
   
   
end Map;
