import java.util.ArrayList;
import java.util.Scanner;

public class gestor_bibloteca {


   class Task {
      private String name;
      private String descripcion;
      private String dueDate;
      private boolean completed;

      public Task(String name, String descripcion, String dueDate){
        this.name = name;

        this.descripcion = descripcion;

        this.dueDate = dueDate;

        this.completed = false;
      }

      // captadores y establecedores aqui

      public String getName() {
         return name;
        }

        public void setName(String name) {
           this.name = name;
        }

        public String getDescripcion() {
         return descripcion;
        }

        public void setDescripcion(String descripcion) {
           this.descripcion = descripcion;
        }

        public String getDueDate() {
         return dueDate;
        }

        public void setDueDate(String dueDate) {
          this.dueDate = dueDate;
        }

        public boolean isCompleted() {
          return completed;
        }

        public void setCompleted(boolean completed) {
         this.completed = completed;
        }


    }  


    class TaskManager{
        private ArrayList<Task> tasks;
        public TaskManager(){
            this.tasks = new ArrayList<>();
        }

        public void addTask(Task task){
            tasks.add(task);
        }

        public void displayerTaks(){
            for( Task task : tasks){

                System.out.println(task.getName() + "-" + task.getDescripcion() + "-Due:" + task.getDueDate() + "- Completed:" + task.isCompleted());

            }
        }

        //otros metodos para gestionar tareas
    }

    public class TaskManagerApp{
        public static void main(String[] args) {
            TaskManager taskManager = new TaskManager();
            Scanner scanner = new Scanner(System.in);



            while (true) {
                System.out.println("1. Add Task");
                System.out.println("2. Display Tasks");
                System.out.println("3. Exit");
                System.out.print("Enter your choice: ");
                int choice = scanner.nextInt();
                scanner.nextLine();  // Consume newline

                switch (choice) {
                    case 1:
                        System.out.print("Enter task name: ");
                        String name = scanner.nextLine();
                        System.out.print("Enter task description: ");
                        String descripcion = scanner.nextLine();
                        System.out.print("Enter due date (YYYY-MM-DD): ");
                        String dueDate = scanner.nextLine();
                        Task newTask = new Task(name, descripcion, dueDate);
                        taskManager.addTask(newTask);
                        break;
                    case 2:
                        taskManager.displayerTaks();
                        break;
                    case 3:
                        System.out.println("Exiting...");
                        scanner.close();

                        System.exit(0);

                    default:
                      System.out.println("Invalid choice. Please try again.");
                }       
            }            

        }
    }
}







