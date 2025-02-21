const utils = require('../scripts/lib/utils')

module.exports.fileList = (mod) => [
    utils.processAllCfgJs(mod, 'locale/all.cfg.js'),

    utils.processLua(mod, 'migrations/00020_removeOutPort.lua'),
    utils.processLua(mod, 'migrations/00030_refreshOrgProvides.lua'),
    utils.processLua(mod, 'migrations/00040_refreshDepots.lua'),
    utils.processLua(mod, 'script/config.lua'),
    utils.processLua(mod, 'script/const.lua'),
    utils.processLua(mod, 'script/entity.lua'),
    utils.processLua(mod, 'script/gui.lua'),
    utils.processLua(mod, 'script/gui_disp.lua'),
    utils.processLua(mod, 'script/org.lua'),
    utils.processLua(mod, 'script/storage.lua'),
    utils.processLua(mod, 'script/train.lua'),
    utils.processLua(mod, 'script/units.lua'),
    utils.processLua(mod, 'script/utils.lua'),
    utils.processLua(mod, 'control.lua'),
    utils.processLua(mod, 'data.lua'),
    utils.processLua(mod, 'settings.lua'),

    'graphics/connector.png',
    'changelog.txt',
    'info.json',
    'LICENSE',
    'thumbnail.png',
]