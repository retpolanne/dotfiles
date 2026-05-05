watcher = hs.caffeinate.watcher.new(function(event)
        if event == hs.caffeinate.watcher.screensDidLock
        or event == hs.caffeinate.watcher.systemWillSleep then
           print("screen locked")
           local output, status, type, rc = hs.execute("/opt/homebrew/bin/blueutil --disconnect '18-3f-70-dd-1f-ad'")
           print(rc)
        end
end)

watcher:start()
