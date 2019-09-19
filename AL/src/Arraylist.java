import java.util.Arrays;

class Arraylist{
    private Object[] li ; //배열을 선언
    int liSize = 0;
    int reSize = 0;

    Arraylist(Object[] li) {
        this.li = li;
    }
    Arraylist(){
        this(new Object[0]);
    }

    public int size(){
        return reSize;
    }

    public void doubleSize(){
        if (liSize == 0){
            li = Arrays.copyOf(li,2);
            liSize = 2;
        }else{
            liSize *=liSize*2;
            li = Arrays.copyOf(li,liSize);

        }


    }


    public Object get(int index){
        
        try{
            return li[index];
        }
        catch (NullPointerException e){
            System.out.println("잘못된 범위입니다.");
            return false;
        }

    }


    public void add (Object object){
        try {

            for (int i = 0 ; ; i++) {
                if (li[i] == null) {
                    li[i] = object;
                    break;
                }
            }
            reSize++;
        }catch (ArrayIndexOutOfBoundsException e){
            doubleSize();
            add(object);
        }
    }
    public void remove (int index){
        reSize--;

        if (li[index-1] == null){
            System.out.println("잘못된 범위입니다.");
        }
        else {
            li[index-1] = null;

            //int i = 1;
            try {
                while (li[index] != null) {
                    li[index - 1] = li[index];
                    li[index] = null;
                    index++;
                }
            }catch (ArrayIndexOutOfBoundsException e){
                System.out.println("removed");
            }
        }
    }

    @Override
    public String toString() {
        String str = "";
        int size = 0;
        for (int i = 0 ; i < liSize-1; i ++){
            if (li[i+1] == null){
                break;
            }
            else
                str += li[i]+"->";
            size = i;
        }
        str+=li[size+1] +"";
        return str;
    }
}
