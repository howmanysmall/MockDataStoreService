--[[	MockDataStoreConstants.lua
		Contains all constants used by the entirety of MockDataStoreService and its sub-classes.

		This module is licensed under APLv2, refer to the LICENSE file or:
		https://github.com/buildthomas/MockDataStoreService/blob/master/LICENSE
]]

return {

    MAX_LENGTH_KEY = 50;			-- Max number of chars in key string
    MAX_LENGTH_NAME = 50;			-- Max number of chars in name string
    MAX_LENGTH_SCOPE = 50;			-- Max number of chars in scope string
    MAX_LENGTH_DATA = 260e3;		-- Max number of chars in (encoded) data strings

    MAX_PAGE_SIZE = 100;			-- Max page size for GetSortedAsync

    YIELD_TIME_MIN = 0.2;			-- Random yield time values for set/get/update/remove/getsorted
    YIELD_TIME_MAX = 0.5;

    YIELD_TIME_UPDATE_MIN = 0.2;	-- Random yield times from events from OnUpdate
    YIELD_TIME_UPDATE_MAX = 0.5;

    WRITE_COOLDOWN = 6.0;			-- Amount of cooldown time between writes on the same key in a particular datastore

	--TODO: DETERMINE CORRECT VALUE:
    GET_COOLDOWN = 60.0;			-- Amount of cooldown time that a recent get of a key is considered fresh

    THROTTLE_QUEUE_SIZE = 30;		-- Amount of requests that can be throttled at once (additional requests will error)

    BUDGETING_ENABLED = true;		-- Whether budgets are enforced and calculated

    BUDGET_GETASYNC = {				-- Budget constant storing structure
        START = 100;			    	-- Starting budget
        RATE = 60;				    	-- Added budget per minute
        RATE_PLR = 10;			    	-- Additional added budget per minute per player
        MAX_FACTOR = 3;			    	-- The maximum budget as a factor of (rate + rate_plr * #players)
    };

    BUDGET_GETSORTEDASYNC = {
        START = 10;
        RATE = 5;
        RATE_PLR = 2;
        MAX_FACTOR = 3;
    };

    BUDGET_ONUPDATE = {
        START = 30;
        RATE = 30;
        RATE_PLR = 5;
        MAX_FACTOR = 1;
    };

    BUDGET_SETINCREMENTASYNC = {
        START = 100;
        RATE = 60;
        RATE_PLR = 10;
        MAX_FACTOR = 3;
    };

    BUDGET_SETINCREMENTSORTEDASYNC = {
        START = 50;
        RATE = 30;
        RATE_PLR = 5;
        MAX_FACTOR = 3;
    };

    BUDGET_UPDATE_INTERVAL = 1.0;	-- Time interval in seconds at which budgets are updated (do not put too low)

    -- TODO: currently unused, is this even useful to have noted here?
    BUDGET_STUDIO_MAX_FACTOR = 100;	-- This overrides MAX_FACTOR if datastores are accessed through plugins/command bar

}