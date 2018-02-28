struct Token{
    int code_type;
    char[30] name_type;
    Token *next;

};
int memory(Token cc, int a, char[30] b)
{
  
  cc.code_type = a;
  strcpy(cc.name_type, b);
  
}