defmodule Calculator.PageCommander do
  use Drab.Commander

  def clear(socket, sender) do
    poke socket, display: ""
  end

  def calculate(socket, sender) do
    first_value = String.to_integer(get_store(socket, :first_value))
    second_value = String.to_integer(peek(socket, :display))
    operand = get_store(socket, :operand)

    result = case operand do
      "add" -> first_value + second_value
      "subtract" -> first_value - second_value
      "multiply" -> first_value * second_value
      "divide" -> first_value / second_value
      _ -> result = second_value
    end

    poke socket, display: "#{result}"
  end

  def add(socket, sender) do
    display = peek(socket, :display)
    put_store(socket, :first_value, "#{display}")
    put_store(socket, :operand, "add")
    poke socket, display: ""
  end

  def subtract(socket, sender) do
    display = peek(socket, :display)
    put_store(socket, :first_value, "#{display}")
    put_store(socket, :operand, "subtract")
    poke socket, display: ""
  end

  def multiply(socket, sender) do
    display = peek(socket, :display)
    put_store(socket, :first_value, "#{display}")
    put_store(socket, :operand, "multiply")
    poke socket, display: ""
  end

  def divide(socket, sender) do
    display = peek(socket, :display)
    put_store(socket, :first_value, "#{display}")
    put_store(socket, :operand, "divide")
    poke socket, display: ""
  end

  def number_0(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}0"
  end
  def number_1(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}1"
  end
  def number_2(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}2"
  end
  def number_3(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}3"
  end
  def number_4(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}4"
  end
  def number_5(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}5"
  end
  def number_6(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}6"
  end
  def number_7(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}7"
  end
  def number_8(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}8"
  end
  def number_9(socket, sender) do
    display = peek(socket, :display)
    poke socket, display: "#{display}9"
  end
end
