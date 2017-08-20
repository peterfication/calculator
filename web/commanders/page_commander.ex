defmodule Calculator.PageCommander do
  use Drab.Commander
  # Place your event handlers here
  #
  # def button_clicked(socket, sender) do
  #   set_prop socket, "#output_div", innerHTML: "Clicked the button!"
  # end
  #
  # Place you callbacks here
  #
  onload :page_loaded
  def page_loaded(socket) do
    set_prop socket, "div.jumbotron h2", innerText: "This page has been drabbed"
    poke socket, counter: 1
  end

  def count(socket, sender) do
    counter = peek(socket, :counter)
    counter = counter + 1
    poke socket, counter: counter
  end
end
