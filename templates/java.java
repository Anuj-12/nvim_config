import java.io.*;
import java.util.*;

public class Main {
    static class FastScanner{
        BufferedReader br = new BufferedReader(
            new InputStreamReader(System.in)
        );
        StringTokenizer st = new StringTokenizer("");
        
        String next(){
            while(!st.hasMoreTokens()){
                try{
                    st = new StringTokenizer(br.readLine());
                }catch(IOException e){
                    e.printStackTrace();
                }
            }

            return st.nextToken();
        }

        int nextInt(){
            return Integer.parseInt(next());
        }

        double nextDouble(){
            return Double.parseDouble(next());
        }
    }

    public static void main(String[] args) throws IOException{

        FastScanner sc = new FastScanner();
        // BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        PrintWriter out = new PrintWriter(System.out);
        // Use --> out.println("")

        // YOU GOT THIS!!
        

        
        out.close();
    }
}

