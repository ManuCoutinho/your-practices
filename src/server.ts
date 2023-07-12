import Fastify from 'fastify'
import cors from '@fastify/cors'
import { appRoutes } from './routes/routes'

const app = Fastify()

app.register(cors) //update cors policy
app.register(appRoutes)

app
  .listen({
    port: 4800
  })
  .then(() => console.log('HTTP Server is running on PORT 4800 🚀'))
