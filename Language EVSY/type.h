struct Token{
    char[30] name_type;
    char [30] token_name;
    char [30] value;
    Token *next;

};
int memory(Token cc, int a, char[30] b)
{
  
  cc.code_type = a;
  strcpy(cc.name_type, b);
  return 0;
}