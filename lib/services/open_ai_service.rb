require 'openai'
require 'dotenv' 
Dotenv.load

class OpenAiService

  def initialize
    @open_client = OpenAI::Client.new(access_token: ENV['OPEN_AI_KEY'])
  end

  def call(prompt)
    @open_client.chat(
      parameters: {
        model: 'gpt-3.5-turbo',
        messages: [{role: 'user', content: prompt}]
      }
    )
  end
end
