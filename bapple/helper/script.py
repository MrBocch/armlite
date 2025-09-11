from PIL import Image

# dummy helper, dont like the idea of manipulating strings for a hex number
def dec_hex(n):
    return f"{n:02X}"

p = 0
for num in range(200, 245):
    s = f"frames/out-{num}.jpg"
    im = Image.open(s)
    im = im.resize( (32, 24))
    im = im.resize( (32, 24))
    width, height = im.size

    for y in range(height):
        for x in range(width):
            r, g, b = im.getpixel((x, y))
            print(f"p{p}: 0x{dec_hex(r)}{dec_hex(g)}{dec_hex(b)}")
            p += 1
