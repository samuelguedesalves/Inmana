# Criação de um modulo.
# Um módulo é uma agrupação de funções.
defmodule Inmana.Welcomer do

  # Receber um nome e uma idade do usuário.
  # Se o usuário tem o nome "banana" e tiver idade "42", ele recebe uma mensagem especial.
  # Se o usuário for maior de idade ele recebe uma mensagem normal.
  # Se o usuário for menor de idade ele recebe um erro.
  # Temos que tratar o nome do usuário.

  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
      |> String.trim()
      |> String.downcase()
      |> evaluate(age)
  end

  # Pathern math
  # se o usuário tiver o nome de "banana" e idade igual a "42"
  defp evaluate("banana", 42) do
    # retorna uma tupla
    {:ok, "You are very special!"}
  end

  # Se o usuário tiver qualquer nome e tiver idade
  defp evaluate(name, age) when age >= 18 do
    # retorna uma tupla
    {:ok, "Welcome #{name}"}
  end

  defp evaluate(name, _age) do
    # retorna uma tupla
    {:error, "You shall not pass #{name}"}
  end
end
