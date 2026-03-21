--[[
    You can add your custom chat messages by editing this file.
    Each setting must follow the template below.

    {
        id = "<id>",
        title = "<title>",
        message = "<message>"
    },

    id      -- Unique string that does not duplicate others. Use "_" (underscore) instead of " " (space) .
    title   -- Text that appears on the option menu.
    message -- Text that you want to send. If you use a table (array), a message is randomly selected from it.

    You can use "[name]" as a place holder.
    It will be replaced by the character name of the player who triggered the event.
]]

-- The following settings are just examples. Feel free to remove or edit them.

return {
    {
        id = "greeting_good_game",
        title = "Good Game",
        message = "gg"
    },
    {
        id = "greeting_nice_try",
        title = "Nice Try",
        message = "nt"
    },
    {
        id = "response_sorry",
        title = "Sorry",
        message = {
            "Sorry",
            "sorry",
            "mb",
        }
    },
    {
        id = "alert_need_ammo",
        title = "Need Ammo",
        message = {
            "I'm dry!",
            "Out of ammo!",
            "i need more boolets",
            "i NEED cock",
        }
    },
}
