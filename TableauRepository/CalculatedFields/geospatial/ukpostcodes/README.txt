UK Postcode Regexes:

- Assumes upper case letters.
- Assumes there is zero or one space between outcode and incode

Postcode

(?:(?:[A-PR-UWYZ][0-9]{1,2}|[A-PR-UWYZ][A-HK-Y][0-9]{1,2}|[A-PR-UWYZ][0-9][A-HJKSTUW]|[A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRV-Y]) ?[0-9][ABD-HJLNP-UW-Z]{2}|GIR 0AA)

Outcode

([A-PR-UWYZ][0-9]{1,2}|[A-PR-UWYZ][A-HK-Y][0-9]{1,2}|[A-PR-UWYZ][0-9][A-HJKSTUW]|[A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRV-Y])(?= ?[0-9][ABD-HJLNP-UW-Z]{2}|GIR 0AA)

Incode

(?![A-PR-UWYZ][0-9]{1,2}|[A-PR-UWYZ][A-HK-Y][0-9]{1,2}|[A-PR-UWYZ][0-9][A-HJKSTUW]|[A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRV-Y] ?)([0-9][ABD-HJLNP-UW-Z]{2}|GIR 0AA)


References

Useful input from http://stackoverflow.com/questions/164979/uk-postcode-regex-comprehensive
