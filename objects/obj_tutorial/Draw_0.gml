// Defina a posição do conteúdo do tutorial
var text_x = 100;  // Coordenada X do texto
var text_y = 100;   // Coordenada Y do texto

// Desenhar o fundo do tutorial
draw_set_color(c_black);
draw_rectangle(text_x, text_y, text_x + 400, text_y + 200, false);  // Fundo do tutorial
draw_set_color(c_white);

// Texto do tutorial
draw_text(text_x + 20, text_y + 20, "Movimentos:");
draw_text(text_x + 20, text_y + 50, "- Pressione W para pular");
draw_text(text_x + 20, text_y + 80, "- Pressione A para mover à esquerda");
draw_text(text_x + 20, text_y + 110, "- Pressione D para mover à direita");
draw_text(text_x + 20, text_y + 140, "- Pressione R para voltar ao checkpoint");
