defmodule TodoAppWeb.API.TaskController do
  use TodoAppWeb, :controller

  alias TodoApp.Todos
  def index(conn, _params) do
    tasks = Todos.list_tasks()

    conn
    |> put_resp_header("Content-type","json++")
    |> put_status(:created)
    |> render("index.json", tasks: tasks)
  end
end
