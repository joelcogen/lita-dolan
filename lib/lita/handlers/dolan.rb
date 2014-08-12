require "lita"

module Lita
  module Handlers
    class Dolan < Handler
      route(/dolan/, :dolan, help: { "dolan" => "Get an dolan comik frum redit" })

      def dolan(response)
        response.reply(DOLANS.sample)
      end
    end

    Lita.register_handler(Dolan)
  end
end
