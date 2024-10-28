return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        -- Other dependencies
        'windwp/nvim-autopairs', -- Add nvim-autopairs as a dependency
    },
    config = function()
        local cmp = require('cmp')
        cmp.setup({
            -- Your existing cmp configurations
            mapping = {
                ['<CR>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
                -- Add other mappings if needed
            },
            -- Additional cmp setup
        })

        -- Integration with nvim-autopairs
        local cmp_autopairs = require('nvim-autopairs.completion.cmp')
        cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
}

