RegisterNUICallback('config', function(_data, cb)
    cb({
        mainColor = GetConvar('qbx_chat:mainColor', '#141517'),
        borderColor = GetConvar('qbx_chat:borderColor', '#373a40'),
        textColor = GetConvar('qbx_chat:textColor', '#ffffff'),
        faintColor = GetConvar('qbx_chat:faintColor', '#c1c2c5'),

        fontFamily = GetConvar('qbx_chat:fontFamily', "'Segoe UI', Arial, Helvetica, sans-serif"),
        consoleFontFamily = GetConvar('qbx_chat:consoleFontFamily', 'monospace'),
        suggestionFontFamily = GetConvar('qbx_chat:suggestionFontFamily', 'monospace'),

        inputIconUrl = GetConvar('qbx_chat:inputIconUrl', 'https://cfx-nui-qbx_chat_theme/theme/icons/duck.png'),
        messageIconUrl = GetConvar('qbx_chat:messageIconUrl', 'https://cfx-nui-qbx_chat_theme/theme/icons/message.svg'),
        consoleIconUrl = GetConvar('qbx_chat:consoleIconUrl', 'https://cfx-nui-qbx_chat_theme/theme/icons/console.svg'),
        joinIconUrl = GetConvar('qbx_chat:joinIconUrl', 'https://cfx-nui-qbx_chat_theme/theme/icons/join.svg'),
        quitIconUrl = GetConvar('qbx_chat:quitIconUrl', 'https://cfx-nui-qbx_chat_theme/theme/icons/quit.svg'),
        userIconUrl = GetConvar('qbx_chat:userIconUrl', 'https://cfx-nui-qbx_chat_theme/theme/icons/user.svg'),
    })
end)
