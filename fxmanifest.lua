fx_version 'cerulean'
game 'common'

name 'qbx_chat_theme'
description 'mantine-styled theme for the chat resource.'
version '1.0.0'
author 'um - d4 | <qbox team>'
repository 'https://github.com/Qbox-project/qbx_chat_theme'

files {
    'theme/*'
}

chat_theme 'qbox_chat' {
    styleSheet = 'theme/app.css',
    script = 'theme/app.js',
    msgTemplates = {
        default = '<div class="alert"><b class="type">{0}</b><span>{1}</span></div>'
    }
}

lua54 'yes'
