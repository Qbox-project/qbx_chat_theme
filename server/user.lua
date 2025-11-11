exports.chat:registerMessageHook(function(source, _outMessage, hookRef)
    hookRef.updateMessage({
        templateId = 'user',
    })
end)
