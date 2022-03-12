math.randomseed( os.time() );

math.random();
	
local number = math.random ( 100 );
local count = 0;
	local guess;
	
	io.write( "Guess my number (1-100): " );
	guess = io.read( "*n" );
	count = count + 1
	
	while guess ~= number do
		if guess > number then
			io.write( guess , " is too high." );
		elseif guess < number then
			io.write( guess , " is too low." );
		end
		
		io.write( "Guess again: " );
		guess = io.read( "*n" );
		count = count + 1
	end
	
	io.write( "You got it right after ", count, " tries!\n\n" );