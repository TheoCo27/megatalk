echo "Test with 0 characters"
printf '    '
{ ./client $1 ""; } 2>&1 | tr '\n' ' '
echo

echo "Test with 8 characters"
printf '    '
{ ./client $1 "Hello World"; } 2>&1 | tr '\n' ' '
echo

echo "Test with 100 characters"
printf '    '
{ time ./client $1 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Cu"; } 2>&1 | tr '\n' ' '
echo

echo "Test with extended ascii"
printf '    '
{ time ./client $1 "ÇüéâäàåçêëèïîìÄÅÉ§ÆôöòûùÿÖÜ¢£¥₧ƒáíóúñÑªº¿⌐¬½¼¡«»
░▒▓│┤╡╢╖╕╣║╗╝╜╛┐└┴├├─┼╞╟╚╔╩╦╠═╬╧╨╤╥╙╘╒╓╫╪┘┌█▄▌▐▀αßΓπΣσµτΦΘΩδ∞φε∩≡±≥≤⌠⌡÷≈°∙·√ⁿ²■ 
"; } 2>&1 | tr '\n' ' '
echo

sleep 2

echo "Test with utf-8 characters"
printf '    '
{ time ./client $1 "© ® † ‡ • ‣ ‰ ‱ ′ ″ ‵ ‶ ‷ ‸ ‽ ‾ ⁁ ⁂ ⁃ ⁄ ⁅ À Á Â
Ã Ä Å Æ Ç È É Ê Ë Ì Í Î Ï Ð Ñ Ò Ó Ô Õ Ö Ø Ù Ú Û Ü Ý Þ ß à á â ã ä å
æ ç è é ê ë ì í î ï ⁆ ⁇ ⁈ ð ñ ò ó ô õ ö ø ù ú û ü ý þ ÿ Ā ā Ă ă Ą ą
Ć ć Ĉ ĉ Ċ ċ Č č Ď ď Đ đ Ē ē Ĕ ĕ Ė ė Ę ę Ě ě Ĝ ĝ Ğ ğ Ġ ġ Ģ ģ ⁉ ⁊ ⁋
⁌ ⁍ ⁎ ⁏ ⁐ ⁑ ⁒ ⁓ ⁔ ⁕ ⁖ ⁗ ⁘ ⁙ ⁚ ⁛ ⁜ ⁝ ⁞©¶Ø‽"; } 2>&1 | tr '\n' ' '
echo

sleep 2

echo "Test with Unicode aka emoji 🤙 "
printf '    '
{ time ./client $1 "

⭐
⭐⭐
⭐⭐⭐
⭐⭐⭐⭐
⭐⭐⭐⭐⭐
⭐⭐⭐⭐⭐



⭐💻🖥⭐🔢🧮💬🔱🚨⭐👁️❌🔗👨‍👩‍👧‍👦🕜🌃🕧🆑😚⭐💥⭐🙀💥🕜⭐🌃🕧
⭐💻🖥⭐🔢🧮💬🔱🚨⭐👁️❌🔗👨‍👩‍👧‍👦🕜🌃🕧🆑😚⭐💥⭐🙀💥🕜⭐🌃🕧
⭐💻🖥⭐🔢🧮💬🔱🚨⭐👁️❌🔗👨‍👩‍👧‍👦🕜🌃🕧🆑😚⭐💥⭐🙀💥🕜⭐🌃🕧
⭐💻🖥⭐🔢🧮💬🔱🚨⭐👁️❌🔗👨‍👩‍👧‍👦🕜🌃🕧🆑😚⭐💥⭐🙀💥🕜⭐🌃🕧


✌✌(➲ ᗜ ➲)✌✌

🏽🏽🏽🏽🏽🏽🏽🏽
🏽⬜⬛🏽🏽⬛⬜🏽
🏽🏽🏽🏿🏿🏽🏽🏽
🏽🏽🏿🏽🏽🏿🏽🏽

🟦🟦🟨🟨🟨🟨🟨🟦🟦🟦
🟦🟦🟨🧿🟨🧿🟨🟦🟦🟦
🟦✋🟨🟨👅🟨🟨👍🟦🟦
🟦🟦🟨🟨🟨🟨🟨🟦🟦🟦
🟦🟦🟫🟫🔳🟫🟫🟦🟦🟦
🟦🟦🟦👞🟦👞🟦🟦🟦🟦

⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬛⬜⬜⬜⬜⬛⬜⬜⬜⬜
⬜⬜⬜⬛🟦🟦⬜⬜⬜⬜⬛⬜⬜⬜
⬜⬜⬛🟦🟦🟦⬜⬜⬜🟦🟦⬛⬜⬜
⬜⬜⬛🟦🟦🟦⬜⬜⬜🟦🟦⬛⬜⬜
⬜⬛⬜🟦🟦⬜⬜⬜⬜🟦🟦🟦⬛⬜
⬜⬛⬜⬜⬜⬜⬜⬜⬜⬜🟦🟦⬛⬜
⬛⬜⬜⬜⬜🟦🟦🟦⬜⬜⬜⬜⬜⬛
⬛⬜⬜⬜🟦🟦🟦🟦🟦⬜⬜⬜⬜⬛
⬛⬜⬜⬜🟦🟦🟦🟦🟦⬜⬜🟦🟦⬛
⬛🟦🟦⬜🟦🟦🟦🟦🟦⬜🟦🟦🟦⬛
⬜⬛🟦🟦⬜🟦🟦🟦⬜⬜🟦🟦⬛⬜
⬜⬛🟦🟦⬜⬜⬜⬜⬜⬜🟦🟦⬛⬜
⬜⬜⬛🟦⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜
⬜⬜⬜⬛⬛⬜⬜⬜⬜⬛⬛⬜⬜⬜
⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜

⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛🟥⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛🟥🟥⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛🟥🟥🟥⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛🟥⬛🟥⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛🟥🟥🟥🟥⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛🟥🟥🟥⬛⬛🟥🟥🟥⬛⬛⬛⬜⬜⬛⬛⬛
⬜⬜⬜⬜⬜⬛⬛🟥🟥🟥⬛🟥⬛⬛🟥⬛🟥🟥🟥⬛⬛⬛⬛🟥⬛
⬜⬜⬜⬜⬛⬛🟥🟥⬛⬛⬛🟥⬛⬛🟥🟥⬛⬛🟥🟥⬛⬛🟥🟥⬛
⬜⬜⬜⬜⬛🟥🟥⬛⬛⬛⬛🟥⬛⬛⬛🟥⬛⬛⬛🟥🟥🟥🟥⬛⬛
⬜⬜⬜⬛⬛🟥⬛⬛⬜⬛🟥🟥⬛⬛⬛🟥🟥🟥🟥🟥🟥⬛⬛⬛⬜
⬜⬜⬜⬛🟥🟥⬛⬜⬜⬛🟥⬛⬛⬛🟥🟥🟥🟥⬛⬛🟥🟥⬛⬜⬜
⬜⬜⬛⬛🟥⬛⬛⬜⬛⬛🟥⬛🟥🟥🟥⬛🟥⬛⬛⬛⬛🟥⬛⬛⬜
⬜⬜⬛🟥🟥⬛⬛⬛⬛🟥🟥🟥🟥⬛⬛⬛🟥🟥⬛⬜⬛🟥🟥⬛⬜
⬜⬜⬛🟥⬛⬛⬛🟥🟥🟥🟥⬛⬛⬛⬜⬛⬛🟥⬛⬜⬛⬛🟥⬛⬜
⬜⬛⬛🟥🟥🟥🟥🟥🟥🟥⬛⬛⬜⬜⬜⬜⬛🟥⬛⬛⬛🟥🟥⬛⬜
⬛⬛🟥🟥🟥⬛⬛⬛🟥⬛⬛⬜⬜⬜⬜⬜⬛🟥🟥⬛⬛🟥⬛⬛⬜
⬛🟥🟥⬛🟥🟥⬛⬛🟥⬛⬜⬜⬜⬜⬜⬜⬛⬛🟥⬛🟥🟥⬛⬜⬜
⬛⬛⬛⬛⬛🟥🟥⬛🟥⬛⬜⬜⬜⬜⬜⬜⬜⬛🟥🟥🟥⬛⬛⬜⬜
⬜⬜⬜⬜⬛⬛🟥🟥🟥⬛⬛⬜⬜⬜⬜⬜⬛⬛🟥🟥⬛⬛⬜⬜⬜
⬜⬜⬜⬜⬜⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬛⬛🟥⬛🟥🟥🟥🟥⬛🟥🟥🟥🟥⬛🟥⬛⬛⬜⬜⬜
⬜⬜⬜⬜⬜⬛🟥🟥⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛🟥🟥⬛⬜⬜⬜
⬜⬜⬜⬜⬜⬛🟥⬛⬛⬜⬜⬛⬛⬛⬛⬛⬜⬜⬛⬛🟥⬛⬜⬜⬜
⬜⬜⬜⬜⬜⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬜⬜


⬜⬜⬜⬜⬜⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜
⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜
⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬜⬜⬜⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬛⬜⬜⬜⬛⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜
⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬛⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬛⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜
⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜
⬜⬜⬛⬛⬛⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬜⬜
⬜⬛⬛⬛⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬜
⬛⬛⬛⬜⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬜⬛⬛⬛⬜⬜⬛⬛⬛⬜
⬛⬛⬛⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬛⬛⬛⬜⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬜⬛⬛⬛⬛⬛⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬛⬜⬛⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬛⬛⬛
⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛
⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛
⬜⬛⬛⬛⬛⬜⬜⬛⬛⬜⬜⬜⬜⬜⬜⬛⬛⬜⬜⬛⬛⬛⬛⬜
⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜
⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜
⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬜⬜⬜⬜⬜

⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜
⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬛
⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬜⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛🟥🟥⬛⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬜🟥🟥🟥⬜⬛⬛🟥🟥🟥⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬜⬜🟥⬜⬜🟥🟥🟥🟥🟥🟥⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥🟥⬛⬛⬛⬛⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛🟥🟥🟥🟥🟥🟥🟥🟥⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛🟥🟥🟥🟥🟦🟦🟦⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
⬛⬛⬛⬛🟥🟥⬛🟥🟥🟦🟦⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
⬛⬛⬛🟦🟥⬛⬛⬛🟥🟦🟦⬛⬛⬛⬛⬛⬛⬛🟦🟦🟦⬛⬛⬛⬛⬛⬛
🟥⬛🟦🟦🟥⬛⬛⬛🟥🟦🟦⬛⬛⬛⬛🟦🟦🟦🟦🟦🟦⬛⬛⬛⬛⬛⬛
🟥🟥🟥🟦🟥🟥⬛🟥🟥🟦🟦⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬛⬛⬛⬛
🟥🟥🟥🟦⬛🟥🟥🟥🟥🟦🟥🟥🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬛⬛⬛⬛
🟥🟥⬛⬛⬛⬛🟥🟥🟥🟥🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬛⬛⬛⬛
⬛🟥⬛🟦🟦🟦🟦🟥🟥🟥🟦🟦🟦🟦🟦🟦🟦⬛🟦🟦🟦🟦⬛⬛⬛⬛⬛
⬛⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛
⬛⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛
⬛⬛⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛🟦🟦🟦🟦🟥🟦🟦⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛🟦🟦🟥🟥🟥🟥⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥🟥🟥⬛⬛⬛⬛⬛⬛🟥🟥🟥🟥⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥🟥⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛
⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛🟥🟥🟥⬛⬛⬛⬛⬛⬛⬛🟥🟥⬛⬛⬛⬛

⬜⬜⬜⬜⬜⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬛🟨⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬛🟨🟨⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬛🟨🟨⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬛🟨🟨⬛⬛⬜⬛⬛⬜⬜⬜⬜⬜⬜⬛⬛⬜⬜
⬜⬜⬛🟨⬛🟨⬛⬛🟨⬛⬛⬜⬛⬛⬛⬛🟨⬛⬜⬜
⬜⬜⬛🏽🟨🟧🟨🟨🟧🟨⬛⬛🟨🟨🟨⬛🟨⬛⬛⬛
⬜⬜⬛🟨🟨🟨🟨🟨🟨⬛🟨🟨🟫🟫🟨⬛🟨🟨🟨⬛
⬜⬜⬛🟨🟨🟨🟨🟨🏽🟨🟫🟫🟫🟨⬛🟧🟨🟨⬛⬜
⬜⬛⬜🟨🟨🟨🟨🟨🟨🟫🟫🟫🟨⬛🟧🟨🟨⬛⬜⬜
⬜⬛⬛🟨🟨🟨🟫⬛🟨🟫🟨🟨⬛⬛🟨🟨🟨🟨⬛⬜
⬜⬛🟨🟨🟨⬛⬜⬛🟨🟨⬛⬛🟧🟧🟨🟧⬛⬛⬜⬜
⬛⬜🏽🟨🟨⬛⬛🟨🟨⬛🏽⬜⬛🟧🟧🟧⬛⬜⬜⬜
⬜⬛⬜⬛🟨🟨🟨🟨⬛🏽🏽⬛🟧🟧🟨🟨🟧⬛⬜⬜
⬛⬜⬜🏽🏽⬛⬛🏽⬜⬜⬜🏽🏽⬛🟨🟨🟨🟧⬛⬜
⬜⬛⬛⬛🏽⬜🏽⬜⬜⬛🏽⬜⬛⬜⬛⬛🟨🟨⬛⬜
⬜⬜⬜⬛⬜⬛⬛⬜⬛🟧⬛⬛⬜⬜⬜⬜⬛🟨⬛⬜
⬜⬜⬜⬛⬛🟧⬛⬛🟧🟨⬛⬜⬜⬜⬜⬜⬛⬛⬜⬜
⬜⬜⬛🟨🟧⬛⬛🟨🟨⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬛⬛⬛🟨🟨🟨⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜


⬜⬜⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜
⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜
⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜
⬛⬜⬜⬜⬜⬜⬜⬜⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬜⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬜⬜⬛
⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛
⬜⬜⬜⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬛⬛⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬜⬜⬜
⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬜⬜⬜


⬜⬜⬜⬛⬛⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬛⬜⬜⬜
⬜⬜⬛🟦🟩🟩🟩🟩⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛🟩🟩🟩🟩🟦⬛⬜⬜
⬜⬛🟦🟦⬛⬛⬛⬛🟨🟨⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛🟨🟨⬛⬛⬛⬛🟦🟦⬛⬜
⬛🟪🟦⬛⬜⬜⬜⬜⬛⬛🟨🟨🟨⬛⬛⬜⬜⬜⬜⬛⬛🟨🟨🟨⬛⬛⬜⬜⬜⬜⬛🟦🟪⬛
⬛🟪⬛⬜⬜⬜⬜⬜⬜⬜⬛⬛🟨🟨🟨⬛⬜⬜⬛🟨🟨🟨⬛⬛⬜⬜⬜⬜⬜⬜⬜⬛🟪⬛
⬛🟪⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛🟧🟥⬛⬛🟥🟧⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛🟪⬛
⬛🟪⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛🟥🟥🟥🟥⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛🟪⬛
⬛🟪⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛🟨🟧🟥⬛⬛🟥🟧🟧⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬛🟪⬛
⬛🟪🟦⬛⬜⬜⬜⬜⬜⬜⬛🟨🟨🟨⬛⬛⬜⬜⬛⬛🟨🟨🟨⬛⬜⬜⬜⬜⬜⬜⬛🟦🟪⬛
⬜⬛🟦⬛⬜⬜⬜⬜⬛⬛🟨🟨⬛⬛⬜⬜⬜⬜⬜⬜⬛⬛🟨🟨⬛⬛⬜⬜⬜⬜⬛🟦⬛⬜
⬜⬜⬛🟦⬛⬛⬛⬛🟩🟨🟨⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛🟨🟨🟩⬛⬛⬛⬛🟦⬛⬜⬜
⬜⬜⬜⬛🟩🟩🟩🟩⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛🟩🟩🟩🟩⬛⬜⬜⬜
⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬜⬛⬛⬛⬛⬜⬜⬜⬜

"; } 2>&1 | tr '\n' ' '
echo

sleep 2

echo "Test with 2545 characters"
printf '    '
{ time ./client $1 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
"; } 2>&1 | tr '\n' ' '
echo

sleep 2

echo "Test with 63525 characters"
printf '    '
{ time ./client $1 "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam maximus est id varius tristique. Curabitur consequat dapibus ligula eu bibendum. Aenean id tellus a justo consequat tincidunt. Aliquam erat volutpat. Cras eget libero egestas, malesuada risus sit amet, fringilla felis. In fermentum, dolor non auctor rhoncus, ligula magna viverra eros, ut ultrices est lectus at ipsum. Sed tempor suscipit libero, venenatis ornare massa scelerisque eu.
Cras cursus felis at risus elementum, ut posuere eros luctus. Maecenas lobortis auctor eleifend. Integer ultricies porta aliquet. Etiam faucibus lectus sed mauris feugiat ornare. Duis eget sagittis lectus. In vitae mollis quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nullam fermentum efficitur odio, in blandit diam faucibus nec. Proin non nisi at lacus fermentum pharetra ac ac sem. Aliquam libero ex, vestibulum quis felis in, fermentum scelerisque nunc.
Etiam pellentesque posuere facilisis. Nullam volutpat velit vitae turpis feugiat imperdiet. Nullam non posuere enim. Nulla at imperdiet nibh, eget viverra quam. Mauris eget pretium mauris, at feugiat dolor. Duis ultricies, odio sed aliquam gravida, enim elit sollicitudin nibh, quis malesuada purus urna faucibus sem. Nulla aliquet magna tortor, vel scelerisque magna sollicitudin quis. Aliquam ut felis lobortis, tincidunt magna ac, feugiat enim. Proin vehicula a lacus eget mollis. Phasellus laoreet tempor dui, quis mollis quam congue vel.
Nulla egestas non odio ut imperdiet. Nullam faucibus magna lectus, semper vulputate metus ornare sed. Cras in egestas magna, vel commodo tortor. Suspendisse eu gravida urna. Duis iaculis nunc in ultricies ultricies. Aenean in massa elit. Suspendisse efficitur turpis in consectetur elementum. Integer porta vehicula elit ut feugiat. Praesent in congue magna. Praesent interdum dignissim purus id rhoncus. Aliquam et dolor aliquet, commodo justo id, semper ex.
Duis congue ligula est, sed iaculis ex lacinia in. Nullam justo eros, lacinia eget maximus quis, egestas sed ipsum. Fusce vel ullamcorper lectus. Curabitur at diam ut arcu dictum posuere. Maecenas nec turpis vitae dui tristique aliquet eu ac tortor. In a purus ut erat eleifend sagittis. Nam sit amet lacinia tellus. Aliquam cursus rhoncus mauris quis lacinia. Ut vitae pretium augue, quis feugiat odio. Phasellus sodales interdum vestibulum. Sed lectus nunc, cursus et metus id, laoreet efficitur nunc. Quisque sodales sollicitudin quam, fermentum suscipit dui placerat sit amet.
"; } 2>&1 | tr '\n' ' '
echo

sleep 2

echo "Test with Ascii art "
printf '    '
{ time ./client $1 "
 *     ,     ,
 *    (\____/)
 *     (_oo_)			[Main entry point for the client application.]
 *       (O)
 *     __||__    \)
 *  []/______\[] /		<\`)))))<
 *  / \______/ \/
 * /    /__\
 * (\   /____\

⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠋⠉⠁⠄⠄⠈⠙⠻⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⠟⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠙⢿⣿
⣿⣿⣿⣿⡿⠃⠄⠄⠄⢀⣀⣀⡀⠄⠄⠄⠄⠄⠄⠄⠈⢿
⣿⣿⣿⡟⠄⠄⠄⠄⠐⢻⣿⣿⣿⣷⡄⠄⠄⠄⠄⠄⠄⠈
⣿⣿⣿⠃⠄⠄⠄⢀⠴⠛⠙⣿⣿⡿⣿⣦⠄⠄⠄⠄⠄⠄
⣿⣿⠃⠄⢠⡖⠉⠄⠄⠄⣠⣿⡏⠄⢹⣿⠄⠄⠄⠄⠄⢠
⣿⠃⠄⠄⢸⣧⣤⣤⣤⢾⣿⣿⡇⠄⠈⢻⡆⠄⠄⠄⠄⣾
⠁⠄⠄⠄⠈⠉⠛⢿⡟⠉⠉⣿⣷⣀⠄⠄⣿⡆⠄⠄⢠⣿
⠄⠄⠄⠄⠄⠄⢠⡿⠿⢿⣷⣿⣿⣿⣿⣿⠿⠃⠄⠄⣸⣿
⠄⠄⠄⠄⠄⢀⡞⠄⠄⠄⠈⣿⣿⣿⡟⠁⠄⠄⠄⠄⣿⣿
⠄⠄⠄⠄⠄⢸⠄⠄⠄⠄⢀⣿⣿⡟⠄⠄⠄⠄⠄⢠⣿⣿
⠄⠄⠄⠄⠄⠘⠄⠄⠄⢀⡼⠛⠉⠄⠄⠄⠄⠄⠄⣼⣿⣿
⠄⠄⠄⠄⠄⡇⠄⠄⢀⠎⠄⠄⠄⠄⠄⠄⠄⠄⠄⠙⢿⣿
⠄⠄⠄⠄⢰⠃⠄⢀⠎⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠙

 *		.----.
 *		| == | 	[Main program entry point for the server application.]
 *		|----|
 *		| == |
 *		|----|
 *		|::::|
 *		|___.|
 ⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣵⣿⣿⣿⠿⡟⣛⣧⣿⣯⣿⣝⡻⢿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⠋⠁⣴⣶⣿⣿⣿⣿⣿⣿⣿⣦⣍⢿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⢷⠄⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣏⢼⣿⣿⣿⣿
⢹⣿⣿⢻⠎⠔⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⣿⣿⣿⣿
⢸⣿⣿⠇⡶⠄⣿⣿⠿⠟⡛⠛⠻⣿⡿⠿⠿⣿⣗⢣⣿⣿⣿⣿
⠐⣿⣿⡿⣷⣾⣿⣿⣿⣾⣶⣶⣶⣿⣁⣔⣤⣀⣼⢲⣿⣿⣿⣿
⠄⣿⣿⣿⣿⣾⣟⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⢟⣾⣿⣿⣿⣿
⠄⣟⣿⣿⣿⡷⣿⣿⣿⣿⣿⣮⣽⠛⢻⣽⣿⡇⣾⣿⣿⣿⣿⣿
⠄⢻⣿⣿⣿⡷⠻⢻⡻⣯⣝⢿⣟⣛⣛⣛⠝⢻⣿⣿⣿⣿⣿⣿
⠄⠸⣿⣿⡟⣹⣦⠄⠋⠻⢿⣶⣶⣶⡾⠃⡂⢾⣿⣿⣿⣿⣿⣿
⠄⠄⠟⠋⠄⢻⣿⣧⣲⡀⡀⠄⠉⠱⣠⣾⡇⠄⠉⠛⢿⣿⣿⣿
⠄⠄⠄⠄⠄⠈⣿⣿⣿⣷⣿⣿⢾⣾⣿⣿⣇⠄⠄⠄⠄⠄


 ⢸⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⡷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠢⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠈⠑⢦⡀⠀⠀⠀⠀⠀
⢸⠀⠀⠀⠀⢀⠖⠒⠒⠒⢤⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠙⢦⡀⠀⠀⠀⠀
⢸⠀⠀⣀⢤⣼⣀⡠⠤⠤⠼⠤⡄⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠙⢄⠀⠀⠀⠀
⢸⠀⠀⠑⡤⠤⡒⠒⠒⡊⠙⡏⠀⢀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠢⡄⠀
⢸⠀⠀⠀⠇⠀⣀⣀⣀⣀⢀⠧⠟⠁⠀⡇⠀ARE YA WINNING SON?⡇⠀
⢸⠀⠀⠀⠸⣀⠀⠀⠈⢉⠟⠓⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠀⠀⠈⢱⡖⠋⠁⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠀⠀⣠⢺⠧⢄⣀⠀⠀⣀⣀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠀⣠⠃⢸⠀⠀⠈⠉⡽⠿⠯⡆⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⣰⠁⠀⢸⠀⠀⠀⠀⠉⠉⠉⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠣⠀⠀⢸⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠀⠀⠀⢸⠀⢇⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠀⠀⠀⡌⠀⠈⡆⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠀⠀⢠⠃⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸
⢸⠀⠀⠀⠀⢸⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠷



⢀⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⡀
⢸⣿⣿⠋⠉⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⠸⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⣶⣶⣶⢶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⡄
⢸⣿⣿⡁⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⠘⠿⠿⠿⠾⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠃
⢰⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆
⢸⣿⣿⣄⣀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⠈⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠁

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 ::::   .::.   .::   .::.   .::.   .:.   .::.   .:.   .::.      :::::
::::.   .::.   .::    ::.   .::    .:.   .::.   .:.    ::.      :::::
::::=++++::+++++:-++++-:=++++:-*+++=:=++++::++++=:=++++-:=++++++=::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::.      .::    ::.   .::    .:.    ::.   .::    ::.   .::.   .::::
::::.      .::    ::.   .::.   .:.   .::.   .::    ::.   .::.   .::::
::::+++++++-::++++-:=+++=::++++-:-++++::=+++=:-++++-:=+++=::++++=::::
::::::::::::::::::::::::::::::::::::::::::::::::::::............:::::
::::         .::.   .::.   .::.   .::    :::    :::              ::::
::::         :::.   .::.   .::.   :::.   :::    :::.             ::::
::::=========-::-===-::-===-::====-::====:::====:::==============::::
:::::.....:::....:::...............................:::....:::.....:::::
::::.    .:::    :::.                             .:::    .::.    .::::
:::::....::::....:::...............................:::....::::....:::::
:::::----::::----:::------------------------------::::----::::----:::::
=:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::=
***********************************************************************

"; } 2>&1 | tr '\n' ' '
echo

echo "Test with Ascii art 2 "
printf '    '
{ ./client $1 "
。　♡ 。　　♡。　　♡
♡。　＼　　｜　　／。　♡
( ͡° ͜ʖ ͡°)
♡。　／　　｜　　＼。　♡
。　♡。 　　。　　♡。

• ▌ ▄ ·.     ▪       ▐ ▄     ▪      ▄▄▄▄▄     ▄▄▄·     ▄▄▌      ▄ •▄
·██ ▐███▪    ██     •█▌▐█    ██     •██      ▐█ ▀█     ██•      █▌▄▌▪
▐█ ▌▐▌▐█·    ▐█·    ▐█▐▐▌    ▐█·     ▐█.▪    ▄█▀▀█     ██▪      ▐▀▀▄·
██ ██▌▐█▌    ▐█▌    ██▐█▌    ▐█▌     ▐█▌·    ▐█ ▪▐▌    ▐█▌▐▌    ▐█.█▌
▀▀  █▪▀▀▀    ▀▀▀    ▀▀ █▪    ▀▀▀     ▀▀▀      ▀  ▀     .▀▀▀     ·▀  ▀

░░ ░░ ░█▐▓▓░████▄▄▄█▀▄▓▓▓▌█
░░░░░▄█▌▀▄▓▓▄▄▄▄▀▀▀▄▓▓▓▓▓▌█
░░░▄█▀▀▄▓█▓▓▓▓▓▓▓▓▓▓▓▓▀░▓▌█
░░█▀▄▓▓▓███▓▓▓███▓▓▓▄░░▄▓▐█▌
░█▌▓▓▓▀▀▓▓▓▓███▓▓▓▓▓▓▓▄▀▓▓▐█
▐█▐██▐░▄▓▓▓▓▓▀▄░▀▓▓▓▓▓▓▓▓▓▌█▌
█▌███▓▓▓▓▓▓▓▓▐░░▄▓▓███▓▓▓▄▀▐█
█▐█▓▀░░▀▓▓▓▓▓▓▓▓▓██████▓▓▓▓▐█
▌▓▄▌▀░▀░▐▀█▄▓▓██████████▓▓▓▌█▌
▌▓▓▓▄▄▀▀▓▓▓▀▓▓▓▓▓▓▓▓█▓█▓█▓▓▌█▌
█▐▓▓▓▓▓▓▄▄▄▓▓▓▓▓▓█▓█▓█▓█▓▓▓▐

⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠀⢀⣴⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣄⠀⣠⣾⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⢸⠿⣛⣛⣛⡻⢿⣇⣤⣤⣶⠆⠀⠀⠀⠀⠀⠀⠀⠀⠈⡳⣴⡄⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⡟⣵⣿⣿⣿⣿⣿⣷⡝⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⢿⣿⣷⠀⠀
⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⢱⡿⣟⡿⣿⢟⣭⣭⡛⣸⣧⣤⣤⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⢿⣿⠀⠀
⢀⣠⠏⠀⠀⠀⠀⠀⠀⠀⠀⠠⢶⣿⣿⠈⣾⣟⣿⣞⡸⣿⣽⡟⡇⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠶⣀⠀
⢸⣿⣾⡤⡀⠀⠀⠀⠀⠀⠀⠀⠀⣨⣿⡜⣮⠟⠯⡾⣿⣶⣒⣺⣿⢙⢦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀
⠀⣿⣿⠈⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⢥⡻⠋⠍⠟⡉⠛⠙⠈⠀⠁⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀
⠀⢘⣯⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠓⠡⡀⠀⠀⠰⡂⡀⢀⡴⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⠀
⠀⢲⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠒⢓⣛⣛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠀
⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⢰⣿⣶⢹⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣦⣤⣤⣤⣽⣿⡆
⠀⠀⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣾⣿⣿⡟⣿⡟⣿⣿⢸⣿⣿⡇⠀⠉⠉⠉⠉⠉⠙⠛⠛⠛⠛⠛⠛⠛⠁
⠀⠀⢸⣿⣇⠀⠀⠀⣀⣤⣶⣿⡿⠟⠋⠁⠀⡟⣼⣿⡇⣿⣿⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢿⣿⣤⣶⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⣿⣶⢝⡇⣿⣿⣾⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠈⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⢱⣿⣿⣿⣿⡇⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣯⢿⣿⢸⣿⣇⠿⠿⠻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀


				███████╗███████╗██████╗ ██╗   ██╗███████╗██████╗
				██╔════╝██╔════╝██╔══██╗██║   ██║██╔════╝██╔══██╗
				███████╗█████╗  ██████╔╝██║   ██║█████╗  ██████╔╝
				╚════██║██╔══╝  ██╔══██╗╚██╗ ██╔╝██╔══╝  ██╔══██╗
				███████║███████╗██║  ██║ ╚████╔╝ ███████╗██║  ██║
				╚══════╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚══════╝╚═╝  ╚═╝

	) ) 　⦅‖ ͇͇ ͇͇▃▇͇͇͌⌂͇͇▌　
_̅̏̏▅̅̏̏ ╱◥███████╲
╱◥◣ ◥████◣▓∩▓∩║
│╱◥█◣║∩∩∩ ║╲◥███╲
││∩│ ▓ ║∏ 田║▓ 田田 ▓ ∩║
☸๑۩๑๑۩๑๑۩๑๑۩๑๑۩๑๑۩๑๑۩„

　　　∧_∧　
　　 (　･_･)    [Segmentation fault nightmare]
　 ＿|　⊃／(＿＿_
／　└-(＿＿＿_／


⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠟⠋⠉⠉⠉⠉⠛⢿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⠇⢀⣾⡄⠀⠀⠀⠀⠀⠀⣷⡄⠈⢿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⡟⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⣿⣿⠀⢸⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⡇⠀⠈⠛⠁⠀⠀⠀⠀⠀⠀⠉⠁⠀⢸⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⡇⠰⣿⣿⠆⠀⠀⠀⠀⠀⠰⠿⠿⠗⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⡇⠀⠠⠤⠀⠀⠀⠀⠀⠀⠀⠒⠒⠀⢸⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡇⠀⢰⣿⡆⠀⠀⠀⠀⠀⠀⢸⣿⡆⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⠀⠈⣿⡇⠀⠀⠀⠀⠀⠀⢸⡿⠀⢸⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⡆⠀⢹⠁⠀⠀⠀⠀⠀⠀⠸⠁⠀⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠺⠿⠿⠿⠿⠟⠀⢀⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠤⠤⠄⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣤⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀
⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀
⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀
⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀
⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀
⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀
⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀
⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀
⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀
⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀
⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀
⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡯
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗
⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠁


 ██████╗██╗     ██╗███████╗███╗   ██╗████████╗
██╔════╝██║     ██║██╔════╝████╗  ██║╚══██╔══╝
██║     ██║     ██║█████╗  ██╔██╗ ██║   ██║
██║     ██║     ██║██╔══╝  ██║╚██╗██║   ██║
╚██████╗███████╗██║███████╗██║ ╚████║   ██║
 ╚═════╝╚══════╝╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝


⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⣠⣴⣶⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⡿⣿⢿⣶⣄⣴⣿⠟⠋⠁⠀⠈⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣾⣿⢳⡽⣎⡟⣾⣻⣯⠀⠀⠀⠀⠀⠀⠈⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢠⣶⣿⡿⢿⣿⣶⣶⣦⣤⣠⣤⣶⣾⣿⠿⠿⠟⢻⡿⣧⢟⣳⣿⣾⣷⣿⣿⡿⣷⣶⣄⣤⣶⣿⢿⡿⣿⣦⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣾⡟⠀⠀⠀⠀⠀⠈⠉⠛⠛⠋⠁⠀⠀⠀⠀⠀⣿⡿⣵⣫⢿⣿⢧⣿⣟⡳⣟⣧⣛⣿⣿⣿⣼⢏⣾⢳⣿⡆⠀⠀⠀⠀⠀
⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣟⣶⢫⣟⣻⣿⣿⣯⢳⣛⡶⣛⣾⣿⣟⣿⡿⣎⣯⣿⠇⠀⠀⠀⠀⠀
⠀⠀⠀⠘⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣼⡿⣼⣣⣿⣿⣿⣟⣿⣣⣿⣿⣿⣿⣿⢿⣸⣻⡿⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢿⣧⣠⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠋⠉⠀⠀⠙⠛⠛⠉⢿⣾⣳⢭⣯⣷⣿⣧⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠛⠉⠀⢻⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢠⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣼⣿⡷⠶⠿⠛⠓
⠀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠙⠉⠉⣿⡇⠀⠀⠀⠀
⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⣿⣿⡆⠀⠀⠀⠀⢠⣤⣿⣷⣤⣦⣤⡄
⠀⠀⠀⠀⢿⣧⠀⢀⡀⠀⠀⠀⠀⢠⣴⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⡿⠁⠀⠀⠀⠀⠀⢁⣿⡇⠀⠀⠀⠀
⢠⣴⣶⡾⢿⣿⡟⠛⠛⠀⠀⠀⠀⣿⣿⣿⠆⠀⠀⠀⠀⠀⠀⢠⣴⣶⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣼⣿⣀⡀⠀⠀⠀
⠈⠁⠀⠀⠀⢻⣧⡀⢀⡀⠀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⠀⠀⢻⣧⣮⣼⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⠋⠙⠛⡿⠷⠀
⠀⠀⠀⢀⣤⣶⢿⣿⡋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⢿⣿⣤⣀⡀⠀⠀⠀⠀
⠀⠀⠀⠙⠋⠀⠀⠙⢿⣦⣴⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⡿⠁⠀⠈⠉⠙⢿⣦⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣴⡿⠛⠿⣿⣶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣤⣤⣴⣾⡿⠿⠛⠉⢿⣧⠀⠀⠀⠀⠀⠈⣿⡇⠀⠀
⠀⠀⠀⠀⠀⠰⠟⠋⠀⠀⠀⢀⣬⣽⣿⣿⣿⣿⣿⣿⣾⡾⢿⠿⠿⠿⠟⠛⠛⣿⡿⢯⢿⣿⣄⠀⠀⠈⢻⣷⡄⠀⠀⠀⣸⣿⠁⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣀⣤⣤⣾⣟⠋⠁⣠⣿⣿⡹⡽⣿⣇⠀⠀⠀⠀⠀⠀⠀⣸⣿⣻⢽⡺⣟⣿⣆⠀⠀⠀⠻⣿⣄⣠⣾⠟⠁⠀⠀⠀
⠀⠀⠀⠀⠀⢠⣾⠟⠉⠉⠘⢿⣷⣰⣿⣿⣼⣷⣟⣾⣻⣷⣤⣤⣀⣤⣤⣾⣿⢏⣷⣯⣷⣭⣿⣿⣧⣠⣤⣶⡿⠟⠋⠁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢈⣿⠇⠀⠀⠀⣠⣿⠿⠛⠉⠉⠉⠛⢿⣷⡽⣏⣿⣛⣯⢿⣹⣺⣿⠿⠛⠉⠉⠉⠙⠻⣿⣏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⣾⡟⠁⠀⠀⠀⠀⠀⠀⠀⠙⣿⣯⣶⢻⣼⢳⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠈⢻⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢻⣷⣄⣸⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣞⣳⡽⣺⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣧⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣷⢻⣜⢿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⢯⣻⢼⣻⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⠇⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⣏⡾⣭⠷⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡿⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣧⡀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣷⣿⣿⣿⣿⣾⣿⣿⣄⡀⠀⠀⠀⠀⠀⣠⣾⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣶⣤⣤⣤⣶⡿⠟⠋⠉⠁⠀⠀⠀⠀⠉⠉⠙⠻⠿⣷⣶⣤⣶⡾⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

⣠⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣄
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⡟⢁⣤⣿⣿⣿⠟⠀⣿⣿⣿⣿⡇⠀⣤⠈⢿⣿⠀⣿⣧⣄⠀⣤⣼⣿⣿
⣿⣿⣿⠁⢨⡈⢹⣿⡏⣰⠀⣿⣿⣿⣿⡇⠀⣉⠀⣾⣿⠀⣿⣿⣿⠀⣿⣿⣿⣿
⣿⣿⣿⡄⠸⠃⢨⣿⣤⣤⠀⣤⣿⣿⣿⡇⠘⠟⠀⣸⣿⠀⣿⣿⣿⠀⣿⣿⣿⣿
⣿⣿⣿⣿⣷⣾⣿⣿⣿⣿⣶⣿⣿⣿⣿⣷⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⠙⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠋


										⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⠀⠀⠀⢠⠏⡆⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣀⡀
										⠀⠀⠀⠀⠀⡟⢦⡀⠇⠀⠀⣀⠞⠀⠀⠘⡀⢀⡠⠚⣉⠤⠂⠀⠀⠀⠈⠙⢦⡀
										⠀⠀⠀⠀⠀⡇⠀⠉⠒⠊⠁⠀⠀⠀⠀⠀⠘⢧⠔⣉⠤⠒⠒⠉⠉⠀⠀⠀⠀⠹⣆
										⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⣤⠶⠶⢶⡄⠀⠀⠀⠀⢹⡆
										⠀⣀⠤⠒⠒⢺⠒⠀⠀⠀⠀⠀⠀⠀⠀⠤⠊⠀⢸⠀⡿⠀⡀⠀⣀⡟⠀⠀⠀⠀⢸⡇
										⠈⠀⠀⣠⠴⠚⢯⡀⠐⠒⠚⠉⠀⢶⠂⠀⣀⠜⠀⢿⡀⠉⠚⠉⠀⠀⠀⠀⣠⠟
										⠀⠠⠊⠀⠀⠀⠀⠙⠂⣴⠒⠒⣲⢔⠉⠉⣹⣞⣉⣈⠿⢦⣀⣀⣀⣠⡴

												⠀⠀⠀⠀⢀⣶⡖⢦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⠙⠋⠹⣦⠘⠉⠳⢤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
												⠙⠛⠓⠶⣶⣶⣿⣛⣀⣰⣆⣀⣀⠉⠛⢶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⠈⠉⠉⠉⠉⠁⠉⠉⠙⢷⣦⡀⠈⠻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡤⠶⢶⣶⣾⣿⡀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⠀⠀⢠⡞⠋⠀⣠⣶⣖⣻⣿⠟⠀⠀⣸⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⠀⠀⢻⣄⠀⠀⠈⠙⠛⠉⠁⠀⣠⣾⡟⠉⢷⠀⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⠀⢀⣠⠿⠿⣿⣿⣿⡿⠿⢿⣿⣯⣿⡇⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⣰⠟⠁⠀⣀⣤⣤⣤⣤⣤⣤⣼⣿⣿⠇⠀⢈⣟⠀⠀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⢰⡏⠀⠀⣾⣏⠁⠀⠀⠀⢀⣀⣴⡿⠋⠀⠀⣼⠟⣦⡀⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠈⢷⣄⡀⠈⠙⠛⠛⠛⠛⠋⠉⠁⢀⣠⣴⣿⡟⠀⠸⣇⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⠀⠀⣈⣽⣿⣶⣶⣶⣶⣶⣶⣾⣿⣯⣍⠀⠘⡗⠀⠀⣿⠀⠀⠀⠀⠀⠀
												⠀⠀⠀⣰⠞⠉⠉⠀⢀⣀⣀⣀⣀⡀⠀⠀⠹⣿⣷⣼⡇⠀⢀⡿⠀⠀⠀⠀⢠⢦
												⠀⠀⣾⠋⠀⠀⢰⡿⠛⠉⠉⠉⠉⠙⠿⠷⣦⣼⣿⠏⠀⢀⣾⡃⠀⠀⠀⣀⡿⣹
												⠀⠀⢿⡀⠀⠀⠘⢿⣦⣄⣀⣤⣤⣤⣤⡶⠿⠋⠁⠀⣠⣾⡏⠛⠓⠒⠛⣩⡴⠃
												⠀⠀⠈⠻⣦⣀⡀⠀⠀⠈⠉⠉⠀⠀⠀⠀⠀⣀⣴⡾⠛⠛⠿⠶⠶⠶⠞⠋⠀⠀
												⠀⠀⠀⠀⠈⠛⠿⠿⠿⠿⣿⣶⡶⠶⠶⠿⠟⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

⠀⠀⠀⠀⡠⠋⢣⠧⣰⣦⡶⢲⡟⢳⡇⠀⠁⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀
⠊⠀⠀⡰⠁⠀⡄⡀⣬⢼⣟⣿⣏⣽⠃⠀⠀⠀⠀⠀⠀⢀⠀⡀⠀⠀⠀⠀⠀⠀
⠄⠐⡖⠁⠀⢰⣴⡷⢿⣼⣥⣤⢤⡿⠚⠛⠻⣶⡄⠀⠀⠈⣦⢱⢄⠀⠀⠀⠀⠀
⢀⠾⡰⠁⠀⠸⠁⠀⠀⠙⡆⢈⡎⠀⠀⠀⠀⠸⣦⠀⠀⠀⢹⡄⠆⠁⠀⠀⠀⠀
⢆⣴⠇⠀⠀⢠⡀⠁⠀⢠⠇⠘⢇⠀⠁⠀⠀⣰⢿⠀⠀⠀⠈⡟⢼⠀⠀⠀⠀⠀
⠞⡏⠀⠀⠀⢸⡏⣶⠒⡁⣀⡀⣰⠑⠂⢐⢎⢹⣸⠀⠀⠀⢠⢰⠘⡆⠀⠀⠀⠀
⣰⢀⡎⠀⠀⢸⣷⣏⡒⠚⠀⠀⠀⠀⠈⣉⡎⡎⡇⠀⠀⠀⠸⡀⡆⠀⠀⠀⠀⠀
⠇⣼⠁⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢰⡇⡆⠀⠀⠀⡇⢀⠀⠀⠀⠀⠀
⠘⢸⠀⣸⠀⡀⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡎⣧⡇⠀⠀⠀⡿⠸⠀⠀⢄⠀⠀
⠀⠀⢀⢻⠀⡇⢠⢿⣿⠿⠿⣿⠿⠿⢿⣿⣿⠁⣇⠃⢸⡄⠀⡇⢃⡄⠀⠈⢫⠒
⠀⠀⢀⡎⠀⡇⢸⡜⣧⣄⡀⠀⣀⡤⠔⣻⣏⢢⢿⠄⠈⢀⠀⢻⠹⡧⢄⣀⠀⢣
⠀⠀⣼⣳⠀⠀⢸⠙⣭⡿⡿⣭⣤⣤⠴⣳⡾⡳⢹⠀⠀⠘⠀⢸⠀⠙⠀⠈⠙⠒
⠀⠰⠉⢸⠀⠀⢸⢀⡏⠣⠤⣤⣤⠤⠬⠪⠋⠀⡎⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀

∧＿∧　
（ ºωº )つ━☆・。
⊂|　　 | 　　　・゜+.
　しーＪ　　　°。+´¨)
　　　　　　　　　.• ´¸.•´¨) ¸.•¨)
　　　　　　　　　　(¸.•´ (¸.•'* ☆ END

		"; } 2>&1 | tr '\n' ' '
echo

