#!/bin/bash

echo "Hello OpenAI!"

MY_API_KEY="my-api-key"

PROMPT="Me conte uma piada sobre computadores?"

curl https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $MY_API_KEY" \
  -d '{
     "model": "gpt-4o-mini",
     "messages": [{"role": "user", "content": "Say this is a test!"}],
     "temperature": 0.7
   }'


#curl https://api.openai.com/v1/chat/completions \
#  -H "Content-Type: application/json" \
#  -H "Authorization: Bearer $OPENAI_API_KEY" \
#  -d '{
#  "model": "gpt-3.5-turbo-0125",
#  "messages": [],
#  "temperature": 1,
#  "max_tokens": 2048,
#  "top_p": 1,
#  "frequency_penalty": 0,
#  "presence_penalty": 0,
#  "response_format": {
#    "type": "text"
#  }
#}'