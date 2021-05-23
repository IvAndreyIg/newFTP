public class Tools {





    static String[]  firstSplitEnter(String line){
        String[] arg = line.split("\n");
        return arg;
    }
    static String[]  splitArray(String line){
        String[] arg = line.split(" ");
        return arg;
    }
    static int splitLenth(String line){

        return line.length();
    }
    static String  firstSplit(String line){
        String[] arg = line.split(" ");
        return arg[0];
    }
    static String  secondSplit(String line){
        String[] arg = line.split(" ");
        if(arg.length>1)
            return arg[1];
        else
            return "";
    }
    static String  fifthSplit(String line){
        String[] arg = line.split(" ");
        if(arg.length>3)
            return arg[3];
        else
            return "";
    }
}
