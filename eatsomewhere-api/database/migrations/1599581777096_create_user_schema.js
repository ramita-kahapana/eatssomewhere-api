'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CreateUserSchema extends Schema {
  up () {
    this.create('create_users', (table) => {
      table.increments()
      table.timestamps()
    })
  }

  down () {
    this.drop('create_users')
  }
}

module.exports = CreateUserSchema
