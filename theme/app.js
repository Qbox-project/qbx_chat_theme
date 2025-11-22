(async () => {
    const RESOURCE_NAME = 'qbx_chat_theme';

    const data = await fetchNui('config');

    /** @type {{ property: string; value: string | null }[]} */
    const vars = [
        { property: '--main-color', value: data.mainColor },
        { property: '--border-color', value: data.borderColor },
        { property: '--text-color', value: data.textColor },
        { property: '--faint-color', value: data.faintColor },
        { property: '--font-family', value: data.fontFamily },
        { property: '--console-font-family', value: data.consoleFontFamily },
        { property: '--suggestion-font-family', value: data.suggestionFontFamily },
        { property: '--input-icon-url', value: `url(${data.inputIconUrl})` },
        { property: '--message-icon-url', value: `url(${data.messageIconUrl})` },
        { property: '--console-icon-url', value: `url(${data.consoleIconUrl})` },
        { property: '--join-icon-url', value: `url(${data.joinIconUrl})` },
        { property: '--quit-icon-url', value: `url(${data.quitIconUrl})` },
        { property: '--user-icon-url', value: `url(${data.userIconUrl})` },
    ];

    for (const { property, value } of vars) {
        document.documentElement.style.setProperty(property, value);
    }

    /**
     * @param {string} endpoint
     * @param {unknown} data
     */
    async function fetchNui(endpoint, data) {
        const body = typeof data === 'undefined' || data === null ? null : JSON.stringify(data);

        const response = await fetch(`https://${RESOURCE_NAME}/${endpoint}`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json; charset=UTF-8',
            },
            body,
        });

        return await response.json();
    }
})();
