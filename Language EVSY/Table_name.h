typedef struct K1 Table;
typedef struct List Spisok;
struct K1
{
    int id;
    char token_name [100];
    char value_name [100];
    char value_token[100];
    int level_depth;
    int index;
}

struct List 
{
    Table field;
    List *next_token;
}
void add_2(Table a, Spisok b)
{
        strcpy(b.field.token_name, a.token_name);
        srtcpy(b.field.value_name, a.value_name);
        strcpy(b.field.value_token,a.value_token);
}

int add_list_token(Table a, Spisok b)
{
    if(b.next_token == NULL)
    add_2(a,b);
    b.next_token = (struct List *) malloc(sizeof(struct List));
    return 0;
}

struct List seacrh_last_elem (Spisok b)
{
    while(b.next_token != NULL)
    {
        b = b.next_token;
    }
    return b;
}

int add_in_list(Table a, Spisok b)
{
    seacrh_last_elem(b);
    add_list_token(a,b);
    b = b.next;
    return 0;
}
int pop(List a)
{
    struct List b;
    while(a.next -> next != NULL)
    {
        a = a.next
    }
    b = a.next;
    a.next_token = NULL;
    free(p);
}
