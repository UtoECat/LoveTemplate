-- Basic game-info structure.

return {
	-- id of your game. Characters can be ONLY alphabetic, numeric and '_'
	id = "my_test_game",
	name = "My Test Game",
	-- Path to icon of your game
	icon = nil,
	-- main info about your game
	version = "0.1",
	author = "UtoECat",
	license = "MIT-0",
	-- Extended info about your game
	source = "https://github.com/author/repository",
	website = "https://github.com/author/website",
	license_file = "license.md",
	-- Optional field
	contributors = {
		{	name = "UtoECat",
			email = "utopia.egor.cat.allandall@gmail.com",
			contribution = "main developer, grpahical and sound designer" },
		{ name = "Amogus",
			email = "one.imposter.among@sus.us",
			contribution = ":з" }
	}
}
