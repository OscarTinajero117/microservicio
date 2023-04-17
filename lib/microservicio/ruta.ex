defmodule Microservicio.Ruta do
  # CONN
  import Plug.Conn

  def init(opt) do
    IO.inspect(opt, label: "init ~>")
    opt
  end

  def call(conn, _opt) do
    IO.inspect(conn, label: "call ~>")
    # Peticiones a BD, etc.
    send_resp(conn, 200, "Hola mundo\n")
  end
end
