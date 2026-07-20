# Processar
A custom simulated cpu for Digital by Hneemann
Can be programmed in `asm` with opcodes defined in `asm\directives.asm`

### Compiling and running asm
Use the [customasm](https://github.com/hlorenzi/customasm) binary to generate the hex file.
Preferably place the customasm executable inside `asm\` and compile with:
```bash
customasm <your_code>.asm -f logisim16 -o main.hex
```

This creates a `main.hex` file inside `asm\` which is directly accessed by the ROM.
Run your code by opening the `Processar.dig` in [Digital](https://github.com/hneemann/digital) and run or press space.
