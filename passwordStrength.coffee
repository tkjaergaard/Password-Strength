class PasswordStrength

    constructor: (settings) ->
        @lowercase = settings.lowercase || 1
        @uppercase = settings.uppercase || 1
        @numbers   = settings.numbers || 1
        @special   = settings.special || 1
        @length    = settings.length || 8

    getScore: (value) ->
        score = 0

        score += @calc(value, /[a-z]/g, @lowercase)
        score += @calc(value, /[A-Z]/g, @uppercase)
        score += @calc(value, /[0-9]/g, @numbers)
        score += @calc(value, /[\$\!\#\?\=\;\:\*\-\_\€\%\&\(\)\`\´]/g, @special)

        score += if value.length > @length then 20 else 20 / @length * value.length

        return score

    calc: (value, pattern, length) ->
        count = value.match(pattern)
        if count && count.length > length
            return 20

        return if count then 20 / length * count.length else 0