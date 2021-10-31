library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package linear is
	
	type t_surf_points is array(integer range 0 to 3) of std_logic_vector(2 downto 0); --Max value of p is 7. 
	type t_surf_array is array(integer range 0 to 2) of t_surf_points;
	
	
	type point is array (integer range 0 to 1) of std_logic_vector(7 downto 0); -- u,v /x,y
	type ab is array(integer range 0 to 1) of std_logic_vector(7 downto 0);
	type pointList is array(integer range 0 to 256) of point;
	type storageOutput is array(integer range 0 to 3) of pointList;
	
	-- Convert bits to poitns
	function to_surf_points(stream : std_logic_vector(11 downto 0)) return t_surf_points;
	-- Create a linear equation of two points
	function linear_form(point0 : point;
							   point1 : point) return ab;
	--Use to find point on linear
	function linear_eq(point_in : point;
							 const : ab) return std_logic_vector;
end linear;

package body linear is
	-- Surfs point
	function to_surf_points(stream : std_logic_vector(11 downto 0)) return t_surf_points is
		variable surf_point : t_surf_points;
	begin
		for i in 0 to 3 loop
			surf_point(i):= stream(3*i+3-1 downto 3*i);
		end loop;
		return surf_point;
	end function;
	
	-- Create a linear equation of two points
	function linear_form(point0 : point;
							 point1 : point) return ab is
		variable a : std_logic_vector(15 downto 0);
		variable b : std_logic_vector(7 downto 0);
	begin
		if point0(0) < point1(0) then
			a := std_logic_vector(shift_left(signed(point1(1))-signed(point0(1)),4)/signed(signed(point1(0))-signed(point0(0))));
		else
			a := std_logic_vector(shift_left(signed(point0(1))-signed(point1(1)),4)/(signed(point0(0))-signed(point1(0))));
		end if;
			b := std_logic_vector(shift_right(signed(a)*signed(point0(0)),4));
			return (a,b);
	end function;
	
	--Calculate U of linear eq ab with V as input
	function linear_eq(point_in : std_logic_vector(7 downto 0);
							 const : ab) return std_logic_vector is
		variable u : std_logic_vector(7 downto 0);
	begin
		u := std_logic_vector((signed(point_in)-signed(const(1)))/shift_left(signed(const(0)),4));
		return u;
	end function;
end package body linear;